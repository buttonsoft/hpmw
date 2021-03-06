<script>
    tinymce.init({
        selector: "textarea",
        theme: "modern",
        plugins: [
            "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
            "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
            "save table contextmenu directionality emoticons template paste textcolor importcss colorpicker textpattern"
        ],
        external_plugins: {
            //"moxiemanager": "/moxiemanager-php/plugin.js"
        },
        content_css: "css/development.css",
        add_unload_trigger: false,

        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons table",

        image_advtab: true,

        style_formats: [
            {title: 'Bold text', format: 'h1'},
            {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
            {title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
            {title: 'Example 1', inline: 'span', classes: 'example1'},
            {title: 'Example 2', inline: 'span', classes: 'example2'},
            {title: 'Table styles'},
            {title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
        ],

        template_replace_values : {
            username : "Jack Black"
        },

        template_preview_replace_values : {
            username : "Preview user name"
        },

        link_class_list: [
            {title: 'Example 1', value: 'example1'},
            {title: 'Example 2', value: 'example2'}
        ],

        image_class_list: [
            {title: 'Example 1', value: 'example1'},
            {title: 'Example 2', value: 'example2'}
        ],

        templates: [
            {title: 'Some title 1', description: 'Some desc 1', content: '<strong class="red">My content: {$username}</strong>'},
            {title: 'Some title 2', description: 'Some desc 2', url: 'development.html'}
        ],

        setup: function(ed) {
            /*ed.on(
                'Init PreInit PostRender PreProcess PostProcess BeforeExecCommand ExecCommand Activate Deactivate ' +
                'NodeChange SetAttrib Load Save BeforeSetContent SetContent BeforeGetContent GetContent Remove Show Hide' +
                'Change Undo Redo AddUndo BeforeAddUndo', function(e) {
                console.log(e.type, e);
            });*/
        },

        spellchecker_callback: function(method, data, success) {
            if (method == "spellcheck") {
                var words = data.match(this.getWordCharPattern());
                var suggestions = {};

                for (var i = 0; i < words.length; i++) {
                    suggestions[words[i]] = ["First", "second"];
                }

                success({words: suggestions, dictionary: true});
            }

            if (method == "addToDictionary") {
                success();
            }
        }
    });
</script>

<form class="form-horizontal" method="POST" action="<?php echo base_url('admin/artikel/add'); ?>">
    <input type="hidden" name="id_artikel">
    <fieldset>
        <legend>Silahkan masukkan artikel anda disini</legend>
        <?php if (validation_errors()) : ?>
        <div class="alert alert-block alert-wrong">
            <button type="button" class="close" data-dismiss="alert">
                <i class="icon-remove"></i>
            </button>
            <strong class="green">
                <?php echo validation_errors(); ?>  
            </strong>
        </div>
        <?php endif; ?>
        <div class="control-group">
            <label class="control-label">Judul</label>
            <div class="controls">
                <input name="judul" class="span7" placeholder="Input judul">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Isi artikel</label>
            <div class="controls">
                <textarea name="content" rows="15"></textarea>
            </div>              
        </div>  
        <div class="form-actions">
            <button type="submit" class="btn btn-primary">Tambah artikel</button>
            <button type="reset" class="btn" onclick="self.history.back()">Cancel</button>
        </div>
    </fieldset>
</form>
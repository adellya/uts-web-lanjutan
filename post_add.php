<?php
$cat = new App\Category();
$cats = $cat->showAll();
?>

<h2>New Post</h2>

<form method="post" action="post_process.php">
    <div class="form-group row">
        <label for="title" class="col-sm-2 col-form-label">Title</label>
        <div class="col-sm-10">
            <input type="text" name="title" class="form-control input-lg" id="title">
        </div>
    </div>

    <textarea id="summernote" name="text"></textarea>

    <script>
      $('#summernote').summernote({
        placeholder: 'Type text in here...',
        tabsize: 2,
        height: 300,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['codeview', 'help']]
        ]
      });
    </script>

    <div class="form-group row">
        <label for="kategori" class="col-sm-2 col-form-label">Kategori</label>
        <div class="col-sm-10">
            <select name="kategori" class="form-control input-lg">
                <?php foreach ($cats as $cat) { ?>
                    <option value="<?php echo $cat['id']; ?>"><?php echo $cat['name']; ?></option>
               <?php } ?>
            </select>
        </div>
    </div>
    <hr>
    <div class="form-group row">
        <div class="col-sm-10">
            <button type="submit" name="submit" class="btn">Create</button>
        </div>
    </div>
</form>

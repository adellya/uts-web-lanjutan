<h2>New Category</h2>

<form method="post" action="category_process.php">
    <div class="form-group row">
        <label for="cat_name" class="col-sm-2 col-form-label">Name</label>
        <div class="col-sm-10">
            <input type="text" name="cat_name" class="form-control" id="cat_name">
        </div>
    </div>
    <div class="form-group row">
        <label for="text" class="col-sm-2 col-form-label">Description</label>
        <div class="col-sm-10">
            <textarea name="text" rows="8" cols="80"></textarea>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <button type="submit" name="create_submit" class="btn">Create</button>
        </div>
    </div>
</form>

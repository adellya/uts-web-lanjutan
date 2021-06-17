<?php
$cat = new App\Category();
$rows = $cat->showAll();
?>

<h2>Category</h2>

<div class="post">
    <a class="btn" href="index.php?page=category_add">New Category</a>
</div>

<table class="table table-border">
    <thead>
        <tr>
            <th>Category</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $row) : ?>
        <tr>
            <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['text']; ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

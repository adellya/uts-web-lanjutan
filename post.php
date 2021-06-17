<?php
$post = new App\Post();
$rows = $post->showAll();
?>

<h2>All Post</h2>

<div class="post">
    <a class="btn" href="index.php?page=post_add">New Post</a>
</div>

<table class="table table-border">
    <thead>
        <tr>
            <th>Title</th>
            <th>Category</th>
            <th>Slug</th>
            <th>Publish</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $row) : ?>
        <tr>
            <td><?php echo $row['title']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['slug']; ?></td>
            <td><?php echo $row['date']; ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

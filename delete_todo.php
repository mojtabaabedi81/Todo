<?php
require "database.php";
if (isset($_GET['deletedId'])) {
    $id = $_GET['deletedId'];
    $query = "DELETE FROM todo WHERE id = ? ";
    $stmt = $conn->prepare($query);
    if ($stmt === false) {
        echo "error preparing statement";
    } else {
        $stmt->bind_param("i", $id);
        if ($stmt->execute()) {
            echo "record deleted successfully";
        } else echo "error deleting record" .
            $stmt->close();
    }

}

?>
<?php
include("../../config/connection.php");

if (isset($_GET['id_pro'])) {
    $ID_SanPham = $_GET['id_pro'];

    // Xóa chi tiết đơn hàng trước
    $sql_delete_order_detail = "DELETE FROM chitietdonhang WHERE ID_SanPham = '$ID_SanPham'";
    if (mysqli_query($mysqli, $sql_delete_order_detail)) {
        echo "Chi tiết đơn hàng đã được xóa thành công";
    } else {
        echo "Lỗi khi xóa chi tiết đơn hàng: " . mysqli_error($mysqli);
    }

    // Xóa chi tiết giỏ hàng
    $sql_delete_cart_detail = "DELETE FROM chitietgiohang WHERE ID_SanPham = '$ID_SanPham'";
    if (mysqli_query($mysqli, $sql_delete_cart_detail)) {
        echo "Chi tiết giỏ hàng đã được xóa thành công";
    } else {
        echo "Lỗi khi xóa chi tiết giỏ hàng: " . mysqli_error($mysqli);
    }

    // Xóa bình luận
    $sql_delete_comment = "DELETE FROM binhluan WHERE ID_SanPham = '$ID_SanPham'";
    if (mysqli_query($mysqli, $sql_delete_comment)) {
        echo "Bình luận đã được xóa thành công";
    } else {
        echo "Lỗi khi xóa bình luận: " . mysqli_error($mysqli);
    }

    // Xóa ảnh
    $query_select_image = "SELECT Img FROM sanpham WHERE ID_SanPham = $ID_SanPham";
    $result_select_image = mysqli_query($mysqli, $query_select_image);
    $row_select_image = mysqli_fetch_assoc($result_select_image);
    $imageToDelete = $row_select_image['Img'];
    
    if (unlink("../../../assets/image/product/" . $imageToDelete)) {
        echo "Ảnh đã được xóa thành công";
    } else {
        echo "Lỗi khi xóa ảnh";
    }

    // Xóa sản phẩm
    $sql_delete_product = "DELETE FROM sanpham WHERE ID_SanPham = '$ID_SanPham'";
    if (mysqli_query($mysqli, $sql_delete_product)) {
        echo "Sản phẩm đã được xóa thành công";
    } else {
        echo "Lỗi khi xóa sản phẩm: " . mysqli_error($mysqli);
    }
}

header('location: ../../index.php?product=list-product');
?>

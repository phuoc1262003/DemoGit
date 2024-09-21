<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QLKHACHSAN.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .gioithieu{
            width: 100%;
            display: flex;
            padding:15px 0 0 0;
        }
        .text {
            width: 50%;
            height: auto;
        }
        .text h1{
            font-style: italic;
            color: red;
            text-align: left;
            margin: 10px 25px;
        }
        .text p{
            font-style: italic;
            margin: 10px;
            font-size: 20px;
        }
        .image {
            width: 50%;
        }
        .image img{
            width: 80%;
            margin: auto;
            display: block;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gioithieu">
        <div class="text">
            <h1>Chào mừng đến</h1>
            <h1>KHÁCH SẠN ROSAKA NHA TRANG</h1>
            <p>Khách sạn Rosaka Nha Trang, nơi nghĩ dưỡng tiện nghi và thân thiện, biểu tượng sang trọng mới của thành phố biển Nha Trang.</p>
            <p>Khách sạn Rosaka Nha Trang với 140 phòng ngủ được thiết kế hiện đại và thanh lịch với trang thiết bị đẳng cấp theo tiêu chuẩn quốc tế, chất lượng phục vụ hoàn hảo, dịch vụ đa dạng,… sẽ mang đến cho quý khách những trải nghiệm tuyệt vời về thành phố của thiên đường du lịch.
                Còn gì thoải mái hơn khi bắt đầu ngày mới với bữa buffet sáng thịnh soạn ở tầng 1, tham gia nhiều tour khám phá những điều kỳ diệu tại địa phương,  có thể tiếp khách ở sảnh lễ tân hoặc nhâm nhi li cocktail tuyệt hảo tại bar-café trên tầng thượng của khách sạn, hòa mình vào làn nước trong xanh của hồ bơi vô cực trên cao đẹp nhất Nha Trang</p>
        </div>
        <div class="image">
            <img src="./images/khachsan.jpg" alt="">
        </div>
    </div>
    <div class="gioithieu">
        <div class="image">
            <img src="./images/h2.png" alt="">
        </div>
        <div class="text">
            <h1>GIỚI THIỆU</h1>
            <p>Khách sạn 4 sao Rosaka Nha Trang được xây dựng đẹp mắt với thiết kế lịch lãm cùng với kiến trúc hiện đại. Tọa lạc tại trung tâm thương mại & du lịch, ngay khu phố Tây nổi tiếng sầm uất của thành phố Nha Trang xinh đẹp, chỉ cần vừa bước chân ra khỏi khách sạn, 
                quý khách đã có thể tản bộ dọc theo khu phố rực rỡ nhất về đêm của Nha Trang, nơi luôn thu hút lượng lớn du khách thỏa thích mua sắm, thưởng thức đặc sản biển tươi ngon tại vô số nhà hàng, quán bar theo nhiều phong cách Á – Âu ,… 
                Khách sạn chỉ cách bãi biển Nha Trang 3 phút đi bộ, cách sân bay quốc tế Cam Ranh 45 phút đi xe, cách ga xe lửa Nha Trang 10 phút và cách trạm xe buýt 5 phút.</p>
            <p>Khách sạn được đưa vào hoạt động đầu năm 2016 với 140 phòng được trang trí thẩm mỹ, nhiều trang thiết bị cao cấp cùng với các dịch vụ như : nhà hàng phục vụ các món ẩm thực tuyệt hảo, quầy bar-café đầy đủ các món thức uống, hồ bơi vô cực ngoài trời trên tầng 22 nhìn toàn cảnh tuyệt đẹp vịnh Nha Trang, trung tâm hội nghị với sức chứa 200 khách cùng các thiết bị hiện đại đáp ứng theo yêu cầu của từng sự kiện.
                Các trang thiết bị khác bao gồm wifi internet miễn phí trong phòng và tại khu vực xung quanh khách sạn, tivi màn hình Led, dịch vụ đổi tiền, giặt ủi, quầy tour, máy phát điện hiện đại, 3 thang máy Misubishi đời mới vận hành riêng cho khách, 2 thang máy nội bộ,… Đặc biệt, hệ thống máy lạnh trung tâm hiện đại nhất hiện nay, luân phiên cấp gió tươi, tỏa nhẹ hương hoa khiến Quý khách luôn cảm thấy thoải mái & dễ chịu</p>
        </div>
    </div>
</asp:Content>

<div class="new_user">
    <fieldset><legend>เพิ่มข้อมูล</legend>
        <form action="insert_profile.php" method="post" enctype="multipart/form-data">
            <label>ชื่อผู้ใช้งาน</label><input type="text" name="userID" placeholder="ชื่อผู้ใช้" required><br>
            <label>สถานะ </label><select name="userStatus">
                <option value="user">user</option>
                <option value="admin">admin</option>
                <option value="Superadmin">super admin</option>
            </select><br>
            <label>คำนำหน้าชื่อ</label><select name="fname">
                <option value="นาย">นาย</option>
                <option value="นางสาว">นางสาว</option>
            </select><br>
            <label>ชื่อจริง</label><input type="text" name="name" required><br>
            <label>นามสกุล</label><input type="text" name="lname" required><br>
            <label>ชื่อเล่น</label><input type="text" name="nname" required><br>
            <label>วันเกิด</label><input type="date" name="brtday"><br>
            <label>quote</label><textarea name="quote"></textarea><br>
            <label>รูปภาพ</label><input type="file" name="fileUpload" accept="image/x-png,image/gif,image/jpeg"><br>
            <label>ที่อยู่</label><input type="text" name="addr"><br>
            <label>เบอร์โทรศัพท์</label><input type="text" name="phone"><br>
            <label>Facebook</label><input type="text" name="faceID"><br>
            <label>Line</label><input type="text" name="lineID"><br>
            <label>ที่อยู่ที่ทำงาน</label><input type="text" name="jobPos"><br>
            <label>jobOff</label><input type="text" name="jobOff"><br>
            <label>สาขา</label><select name="majorID">
                <option value="1">สาขาวิศวกรรมโยธา</option>
                <option value="2">สาขาวิศวกรรมอุตสาหการ</option>
                <option value="3">สาขาเครื่องกล</option>
                <option value="4">สาขาวิศวกรรมไฟฟ้า</option>
                <option value="5">สาขาวิศวกรรมคอมพิวเตอร์</option>
                <option value="6">สาขาวิศวกรรมวัสดุ</option>
                <option value="7">สาขาวิศวกรรมสิ่งแวดล้อม</option>
                <option value="8">สาขาวิศวกรรมเคมี</option>
            </select><br>
            <button>เพิ่มข้อมูล</button>
        </form>
    </fieldset>
</div>
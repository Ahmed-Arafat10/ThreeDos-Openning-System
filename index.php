<?php
require_once 'class/DB.class.php';
require_once 'class/Users.class.php';

$user = new User();
$UsersWhoPaid = $user->GetUsers("where `money` = '1'  ORDER BY `status` ASC, `name` ASC");
$UsersWhoNotPaid = $user->GetUsers("where `money` = '0' ORDER BY `status` ASC, `name` ASC");


if (isset($_GET['attend'])) {
    $ID = $_GET['attend'];
    $user = new User();
    $user->UpdateData(" `status` = 1 WHERE `ID` = ? ", $ID);
    header("location: index.php");
}

if (isset($_GET['pay'])) {
    $ID = $_GET['pay'];
    $user->UpdateData(" `money` = 1 WHERE  `ID` = ?", $ID);
    header("location: index.php");
}
?>


<!DOCTYPE html>

<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <script src="jquery.js?v=<?php echo time(); ?>"></script>
    <link rel="stylesheet" href="index.css?v=<?php echo time(); ?>">
</head>

<body>

    <div class="container">
        <ul class="nav nav-pills mx-auto" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active text-white" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Paid</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link text-white" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Unpaid</a>
            </li>

            <li>
            </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
            <input class="form-control mr-sm-2" id="myInput" type="search" placeholder="Search" aria-label="Search">

            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                <table class="table  table-advance text-light" id="myTable">
                    <tbody>
                        <tr>

                            <th><i class="icon_profile"></i> Ticket Code</th>
                            <th><i class="icon_calendar"></i> Name</th>
                            <th><i class="icon_mail_alt"></i> Council</th>
                            <th><i class="icon_mobile"></i>Phone</th>
                            <th><i class="icon_cogs"></i> Attend</th>
                            <th><i class="icon_cogs"></i> Fees</th>

                        <tr>
                            <?php foreach ($UsersWhoPaid as $data) : extract($data);
                            ?>
                                <td> <?php echo $code ?> </td>
                                <td> <?php echo $name ?> </td>
                                <td> <?php echo $council ?> </td>
                                <td> <?php echo $phone ?> </td>
                                <td>
                                    <?php if (!$status) : ?>
                                        <a href="index.php?attend=<?php echo $ID; ?>" class="btn btn-primary"> Attend </a>
                                    <?php else : ?>
                                        <button disabled class="btn btn-info"> Attended </button>
                                    <?php endif ?>
                                </td>
                                <td> <button class="btn btn-info btn-sm" disabled> Paid </button> </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>

            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                <table class="table  table-advance text-light" id="myTable">
                    <tbody>
                        <tr>
                            <th><i class="icon_profile"></i> Ticket Code</th>
                            <th><i class="icon_calendar"></i> Name</th>
                            <th><i class="icon_mail_alt"></i> Council</th>
                            <th><i class="icon_mobile"></i>Phone</th>
                            <th><i class="icon_cogs"></i> Attend</th>
                            <th><i class="icon_cogs"></i> Fees</th>
                        </tr>
                        <tr>
                            <?php
                            foreach ($UsersWhoNotPaid as $data) : extract($data); ?>
                                <td> <?php echo $code ?> </td>
                                <td> <?php echo $name ?> </td>
                                <td> <?php echo $council ?> </td>
                                <td> <?php echo $phone ?> </td>
                                <td>
                                    <?php if (!$status) : ?>
                                        <a href="index.php?attend=<?php echo $ID; ?>" class="btn btn-primary"> Attend </a>
                                    <?php else : ?>
                                        <button class="btn btn-info" disabled>Attended</button>
                                    <?php endif ?>
                                </td>
                                <td> <a href="index.php?pay=<?php echo $ID; ?>" class="btn btn-danger"> Unpaid </a> </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>





</body>

</html>
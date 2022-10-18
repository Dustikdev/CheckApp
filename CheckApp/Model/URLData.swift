//
//  URLData.swift
//  CheckApp
//
//  Created by Никита Швец on 18.10.2022.
//

import Foundation

let mockData: String =
"""
<!DOCTYPE html>
<html lang="sr-Cyrl-RS">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Провера рачуна - TaxCore</title>
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />
    <link href="/Content/css?v=CMJX9PRIaS5SVb54H9lSVbrx4oKUVuIKr17Q3CexgV41" rel="stylesheet"/>

    <link href="/Content/theme?v=Mm3ZMcV7iDCQ7cGcjnV8tq9Px24VziKQ56i0KUxiItE1" rel="stylesheet"/>

    <link href="/font-awesome/css?v=o4RQG0VyKe5KvT8vhAt1OmqJkZ2U6L2spbyAzU84zGo1" rel="stylesheet"/>

    <script src="/bundles/jquery?v=DilzeZuJxdbQsfc_JOwsWB4VFDhTPM73urYeggaKdL81"></script>

    <script src="/bundles/bootstrap?v=B2Aod10hsfpgprkQoCi898mBDbb-2dlSAOQz-A6MrX81"></script>

    <script src="/bundles/modernizr?v=inCVuEFe6J4Q07A0AcRsbJic_UE5MwpRMNGcOtk94TE1"></script>

    
    <link href="/plugins/toastrStyles?v=9czft_r-CqghKeskuFwGAB-eQDMxtTqbQuPIWDCPfb01" rel="stylesheet"/>


    <style>
        .form-group {
            display: grid;
        }

        .col-form-label {
            font-weight: bold;
        }
    </style>

    
    <script src="/plugins/toastr?v=nU7i1d5lsXeim4T9MB2Gdegj9fc8yXl1nK6hEZMOAm81"></script>

    <script src="/plugins/validate?v=br8sCtvT9CeZHEj9QHJVu7SbTmBdBImzgQlTDH7OQ601"></script>


    <script type="text/javascript">

        $(document).ready(function () {
            $("#languagesSelect").on('change', function () {
                var lang = this.value;
                location.href = '';
            });
        });

        function HideAllOptions() {

            $("#sendToEmailOptions").hide();
            $("#sendToSmsOptions").hide();
            $("#donateOptions").hide();
            $("#saveInvoiceOptions").hide();
            $("#lotteryOptions").hide();
            $("#notAvailable").hide();
        }
         
    </script>



    <link href="/BotDetectCaptcha.ashx?get=layout-stylesheet&amp;amp;t=1666101600" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var lang = 'sr-Cyrl-RS';
        var dateTimePickerFormat = 'dd.mm.yyyy. h:ii';
        var showMeridianTime = false;
    </script>
</head>
<body class="body-content">
    <div class="container">
        <div class="m-t-md">
             <div class="row  mr-1 ml-1">
                <h3 class="text-dark"><img src="/Content/Images/logo.png" alt="logo" height="25" /> Провера рачуна</h3>

                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a id="languagesSelect" href="#" class="nav-link dropdown-toggle pb-1 pt-1" data-toggle="dropdown"><img src="/Content/Images/Flags/sr-Cyrl-RS.png" alt="српски (Србија)" width="16" /> српски (Србија)</a>
                        <div class="dropdown-menu dropdown-menu-right">
                                <a href="/Home/ChangeLanguage/en-US" class="dropdown-item "><img src="/Content/Images/Flags/en-US.png" alt="English (United States)" width="16" /> English (United States)</a>
                                <a href="/Home/ChangeLanguage/fr-FR" class="dropdown-item "><img src="/Content/Images/Flags/fr-FR.png" alt="fran&#231;ais (France)" width="16" /> Fran&#231;ais (France)</a>
                                <a href="/Home/ChangeLanguage/sr-Cyrl-RS" class="dropdown-item  font-bold"><img src="/Content/Images/Flags/sr-Cyrl-RS.png" alt="српски (Србија)" width="16" /> Српски (Србија)</a>
                        </div>
                    </li>
                </ul>
            </div>
            <hr />
            

<form action="/v/" method="post"><input name="__RequestVerificationToken" type="hidden" value="gDZdskOfisha-uUlfRLjAE_a6__ES3W8ZX8S6A26tO5ajHzcvnwzKlycPFikevdmnlWcL0Bi8pm1myZ3Y7NJa6lYM0zPAWD8N3ztqDGm7fU1" />    <div class="row">
        <div class="col-lg-12  text-center">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <i class="glyphicon glyphicon-info-sign"></i>
                    Статус рачуна
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-md-12">
                                <label class="h2" for="" style="margin-top:10px">Рачун је проверен</label>
                            <br /> <img src="/Content/Images/Verification/Valid.png" width="100" height="100" />

                            
                        </div>
                        <div class="col-md-12">

                                    <span style="padding: 10px 0px">
                                        <text><b>Упоредите време издавања и износ промета на овој страни и на Вашем рачуну. У случају неједнакости, <a target="_blank" href='/CustomerReport/Q4MM9AEU-Q4MM9AEU-81185/'>пријавите случај пореској управи.</a></b></text>
                                    </span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-lg-6 col-md-6 text-center">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <i class="glyphicon glyphicon-arrow-right"></i>
                    Захтев за фискализацију рачуна
                </div>
                <div class="panel-body">
                        <div class="form-group">
                            <label class="col-form-label">ПИБ</label>
                            <div class="col-md-12">
                                103482850
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-form-label">Име продајног места</label>
                            <div class="col-md-12">
                                6217 Stari Đeram
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Адреса</label>
                            <div class="col-md-12">
                                БУЛЕВАР КРАЉА АЛЕКСАНДРА 113
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Град</label>
                            <div class="col-md-12">
                                БЕОГРАД (ЗВЕЗДАРА)
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Општина</label>
                            <div class="col-md-12">
                                Београд-Звездара
                            </div>
                        </div>

                    <div class="form-group">
                        <label class="col-form-label">ИД купца</label>
                        <div class="col-md-12">
                            
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Затражио</label>
                        <div class="col-md-12">
                            Q4MM9AEU
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label" for="">Врста</label>
                        <div class="col-md-12">
                            Промет Продаја
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-6 col-md-6 text-center">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <i class="glyphicon glyphicon-arrow-left"></i>
                    Резултат фискализације рачуна
                </div>
                <div class="panel-body">

                    <div class="form-group">
                        <label class="col-form-label">Укупан износ</label>
                        <div class="col-md-12">
                            427,99
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Бројач по врсти трансакције</label>
                        <div class="col-md-12">
                            81164
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Бројач укупног броја</label>
                        <div class="col-md-12">
                            81185
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Екстензија бројача рачуна</label>
                        <div class="col-md-12">
                            ПП
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Затражио - Потписао - Бројач</label>
                        <div class="col-md-12">
                            Q4MM9AEU-Q4MM9AEU-81185
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Потписао</label>
                        <div class="col-md-12">
                            Q4MM9AEU
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">ПФР време (временска зона сервера)</label>
                        <div class="col-md-12">
                            11.10.2022. 17:05:58
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-12 text-center centered">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse1"><i class="glyphicon glyphicon-list-alt"></i> Журнал</a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                            <pre style="font-family:monospace">============ ФИСКАЛНИ РАЧУН ============
103482850
DELHAIZE SERBIA
6217 Stari Đeram
БУЛЕВАР КРАЉА АЛЕКСАНДРА 113
Београд-Звездара
Касир:                            Dragan
ЕСИР број:                      253/49.0
-------------ПРОМЕТ ПРОДАЈА-------------
Артикли
========================================
Назив   Цена         Кол.         Укупно
Chilito opak.ljut.sos250gGurm/KOM (Ђ)
       139,00          1          139,00
Pivo svetlo Jelen limenka 0.5l/KOM (Ђ)
        69,00          4          276,00
Kesa tregerica visekratna MTSG/KOM (Ђ)
        12,99          1           12,99
----------------------------------------
Укупан износ:                     427,99
Готовина:                         500,00
========================================
Ознака       Име      Стопа        Порез
Ђ           О-ПДВ   20,00%         71,33
----------------------------------------
Укупан износ пореза:               71,33
========================================
ПФР време:          11.10.2022. 17:05:58
ПФР број рачуна: Q4MM9AEU-Q4MM9AEU-81185
Бројач рачуна:             81164/81185ПП
========================================<br/><img src=data:image/gif;base64,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 width='250' height='250'/>
======== КРАЈ ФИСКАЛНОГ РАЧУНА =========</pre>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="row">
            <div class="col-lg-12 text-center centered">
                <a target="_blank" href='/CustomerReport/Q4MM9AEU-Q4MM9AEU-81185/' class="btn btn-danger">       <i class="glyphicon glyphicon-flag"></i> Пријавите овај рачун</a>
            </div>
        </div>
</form>








            <hr />
            <footer>
                <p class="text-center"><strong>Copyright</strong> <a href="http://www.dti.rs">Data Tech International</a> &copy; 2012-2022</p>
            </footer>
        </div>
    </div>
    
</body>

</html>
"""

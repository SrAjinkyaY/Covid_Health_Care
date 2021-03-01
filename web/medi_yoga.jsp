<%-- 
    Document   : medi_yoga
    Created on : 16 Oct, 2020, 10:51:00 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meditation & Yoga</title>
    </head>
    <body onload="spinStop()">
        <div id="spinLoader" class="container" style=" font-size: 35px; color: olivedrab; height: 700px; margin-top: 300px;">
            <center>
                <div id="spinLoader" class="spinner-border m-5" style=" margin-top: 300px; font-size: 35px; color: olivedrab; width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </center>
        </div>
        <!-- Image and text -->
        <nav class="navbar navbar-expand-md navbar-light">
            <img src="Images/icon-3.png" width="55" height="55" alt="Covid Health Care"/>&nbsp;
            <a class="navbar-brand mb-2" href="index.html">
                <b class="h3">🅲🅾🆅🅸🅳 🅷🅴🅰🅻🆃🅷 🅲🅰🆁🅴</b>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse nav justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item active my-lg-0">
                        <a class="nav-link" href="index.html">Home<span class="sr-only">Home</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="viewHospital.jsp">View Covid Hospitals<span class="sr-only">View Covid Hospitals</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="Nutrition and diet/netridiet.jsp">Nutrition and Diet<span class="sr-only">Nutrition and Diet</span></a>
                    </li>
                    &nbsp;
                    <li class="nav-item my-lg-0">
                        <a class="nav-link" href="medi_yoga.jsp">Meditation & Yoga<span class="sr-only">Meditation & Yoga</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-1 mb-0">
                    <li class="nav-item active" style="">
                        <a class="nav-link border border-warning rounded-sm bg-light" href="login.jsp">&nbsp; Sign In / Sign Up &nbsp;</a>
                    </li>
                    &nbsp; &nbsp;
                    <li class="nav-item active">
                        <a class="nav-link border border-warning rounded-sm bg-light" href="#">&nbsp; Contact Us &nbsp;</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>
    <center>
        <div class="card">
            <div class="card-body">
                <div class="card text-center" style="width: 1300px;">
                    <div class="card-header">
                        <ul class="nav nav-tabs card-header-tabs"  style="font-family:'Source Sans Pro', sans-serif; font-size: 26px; color: #444444; ">
                            <li class="nav-item">
                                <a id="tabmedi" class="nav-link" onclick="viewMedi()">Meditation</a>
                            </li>
                            <li class="nav-item">
                                <a id="tabyoga" class="nav-link" onclick="viewYog()">Yoga</a>
                            </li>
                            <li class="nav-item">
                                <a id="tabrev" class="nav-link" onclick="viewRev()">COVID Experiences</a>
                            </li>
                        </ul>
                    </div>
                    <div id="meditation" class="card-body" style=" display: none;">
                        <h5 class="card-title" style=" font-weight: bold;">Meditation</h5>
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/khVAeWGfRv0" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Meditation</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">BK Shivani takes us through meditation, to remain powerful and emotionally protected from the Corona virus. Sit back, relax the body and start this Guided Commentary. As you listen to each thought, visualise it and start feeling it.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/1UHDYOJJ8oc" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Meditation</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">Meditate against #COVID-19 Close your eyes. Sit back, relax the body and start this Guided Commentary. As you listen to each thought, visualise it and start feeling it.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/KaflxpHc_E8" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Meditation</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">Meditate against #COVID-19 Close your eyes. Sit back, relax the body and start this Guided Commentary. As you listen to each thought, visualise it and start feeling it.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/OpEKOvPZ3iw" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Meditation</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">An experience of an Individual who decides to start Meditation during this Lockdown Situation by keeping himself indoor and while he faces some Funny Challenges from usual activities at home. Its interesting to see how he prepares himself, decorates, creates environment yet gets irritated and loses his cool, in fun way.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/6Z3fMK7o9RM" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Meditation</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">ज़ज़ेन - मूक बैठे: कोरोना के लिए ध्यान <br/>ज़ज़ेन बिना किसी निर्णय के चुपचाप बैठने और अपने विचारों का पालन करने के लिए ध्यान की एक तकनीक है। अपने मन को अपने विचारों के अज्ञात क्षेत्र में भटकने दें। विचार जो आप सामान्य रूप से नहीं सोचते हैं।</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                    
                    <div id="yoga" class="card-body" style=" display: none;">
                        <h5 class="card-title">Yoga</h5>
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/tsirEJLlk10" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Yoga</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">Simple yoga for a better life during COVID-19. You don't have to master complex yoga positions to ease stress. This short video will help you with a few moves you can do anywhere, and feel better instantly.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/tPIQnkZny1s" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Yoga</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">Corona patients are treating with the help of yoga and other physiotherapy exercises at Sri Aurobindo Medical College, Indore</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/395ZloN4Rr8" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Yoga</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">Pranayama is a breath-control technique. In Sanskrit, pran means life and ayama means way. Pranayama can help you regulate your system, alter your mood and ensure longevity. These pranayamas are simple, but very effective tool for relaxation.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/quTno_ZUw20" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Yoga</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">COVID-19 prevention: 6 yoga poses to strengthen your immune system<br>Here are six yoga poses combining twist and restorative postures to strengthen your immune system.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/JEFQqbkUkag" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Yoga</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">#Sadhguru Yogi, mystic and visionary, Sadhguru is a spiritual master with a difference. An arresting blend of profundity and pragmatism, his life and work serves as a reminder that yoga is a contemporary science, vitally relevant to our times.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                    <div id="review" class="card-body" style=" display: none;">
                        <h5 class="card-title">COVID Experiences</h5>
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/Eh8BOSu5JVw" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Story I</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">This is the story of 21-year-old @hrishigiridhar who was tested positive of COVID-19  on 21st March after he returned from London. He shares his journey of survival. Hrishi shares with us the kind of symptoms he developed and how he was treated with the best treatment from the doctors & nurses at the  Kasturba Hospital all free of cost.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/BIf1ZTBcnGs" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Story II</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">Amit Kapoor, a recovered Covid-19 patient, issued a video message as cases of Coronavirus infection rose in the country. Kapoor released the message after reaching home after his 14-day isolation. He appealed to people to not panic and cooperate with doctors and the government to ensure that the virus doesn't spread.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/fACNSGA79ZQ" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Story III</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">Mehar Bhagat, a resident of Delhi recently posted a video sharing her experience of how she contracted the Novel Coronavirus and her journey towards recovery. The youth has discussed her incubation period and how she self-quarantined herself before getting tested as positive for COVID-19. Watch the video for more.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/Gf535t_TeKY" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Story IV</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">In this video, I, Shubham Jain, resident of New Delhi (age 25) will discuss my experience of covid 19. I was infected by coronavirus in June and have recently donated my plasma after antibody test. I will also share the home remedies that I used to treat covid 19(coronavirus) after doctor's approval.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <hr style="height:2px;border-width:0;color:gray;background-color:gray; width: 1050px;">
                        <div class="card mb-3">
                                    <iframe class="embed-responsive-item mx-lg-auto" src="https://www.youtube.com/embed/0eysq7C2LvM" style="margin-left:80px; margin-right: 190px; width: 980px; height: 506px;" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">Story V</h5>
                                <p class="card-text mx-lg-auto" style=" width: 980px;">Mr. Sunil Prashad sharing his COVID-19 recovery experience with the assistance of Aakash Healthcare's COVID-19 home quarantine kit.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>     
    </center>



    <script type="text/javascript">
        var medi = document.getElementById('meditation');
        var tabm = document.getElementById('tabmedi');
        var yoga = document.getElementById('yoga');
        var taby = document.getElementById('tabyoga');
        var revi = document.getElementById('review');
        var tabr = document.getElementById('tabrev');
        var preloader = document.getElementById('spinLoader');
        function viewMedi() {
            medi.style.display = 'block';
            tabm.className = 'nav-link active';
            yoga.style.display = 'none';
            taby.className = 'nav-link';
            revi.style.display = 'none';
            tabr.className = 'nav-link';
        }
        function viewYog() {
            yoga.style.display = 'block';
            taby.className = 'nav-link active';
            medi.style.display = 'none';
            tabm.className = 'nav-link';
            revi.style.display = 'none';
            tabr.className = 'nav-link';
        }
        function viewRev() {
            revi.style.display = 'block';
            tabr.className = 'nav-link active';
            yoga.style.display = 'none';
            taby.className = 'nav-link';
            medi.style.display = 'none';
            tabm.className = 'nav-link';
        }
        function spinStop() {
            preloader.style.display = 'none';
        }
    </script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
/*
////////////////////////////////////////////////////////////////

Author: Free-Template.co
Author URL: http://free-template.co.
License: https://creativecommons.org/licenses/by/3.0/
License URL: https://creativecommons.org/licenses/by/3.0/
Site License URL: https://free-template.co/template-license/
  
Website:  https://free-template.co
Facebook: https://www.facebook.com/FreeDashTemplate.co
Twitter:  https://twitter.com/Free_Templateco
RSS Feed: https://feeds.feedburner.com/Free-templateco

////////////////////////////////////////////////////////////////
*/
/* Base */
html {
  overflow-x: hidden; }

body {
  line-height: 1.7;
  color: gray;
  font-weight: 400;
  font-size: 1rem; }

::-moz-selection {
  background: #000;
  color: #fff; }

::selection {
  background: #000;
  color: #fff; }

a {
  -webkit-transition: .3s all ease;
  -o-transition: .3s all ease;
  transition: .3s all ease; }
  a:hover {
    text-decoration: none; }

h1, h2, h3, h4, h5,
.h1, .h2, .h3, .h4, .h5 {
  font-family: "Oswald", sans-serif;
  font-weight: 300 !important;
  text-transform: uppercase; }

.border-2 {
  border-width: 2px; }

.text-black {
  color: #000 !important; }

.bg-black {
  background: #000 !important; }

.color-black-opacity-5 {
  color: rgba(0, 0, 0, 0.5); }

.color-white-opacity-5 {
  color: rgba(255, 255, 255, 0.5); }

.site-wrap:before {
  display: none;
  -webkit-transition: .3s all ease-in-out;
  -o-transition: .3s all ease-in-out;
  transition: .3s all ease-in-out;
  background: rgba(0, 0, 0, 0.6);
  content: "";
  position: absolute;
  z-index: 2000;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  opacity: 0;
  visibility: hidden; }

.offcanvas-menu .site-wrap {
  height: 100%;
  width: 100%;
  z-index: 2; }
  .offcanvas-menu .site-wrap:before {
    opacity: 1;
    visibility: visible; }

.btn {
  font-size: 16px;
  border-radius: 4px;
  padding: 10px 30px; }
  .btn:hover, .btn:active, .btn:focus {
    outline: none;
    -webkit-box-shadow: none !important;
    box-shadow: none !important; }
  .btn.btn-primary {
    background: #37cfa2;
    border-color: #37cfa2;
    color: #fff; }
    .btn.btn-primary:hover {
      background: #343a40;
      color: #fff;
      border-color: #343a40; }
    .btn.btn-primary.btn-black--hover:hover {
      background: #666666;
      color: #fff; }

.line-height-1 {
  line-height: 1 !important; }

.bg-black {
  background: #000; }

.form-control {
  height: 43px;
  border-radius: 4px;
  font-family: "Roboto", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"; }
  .form-control:active, .form-control:focus {
    border-color: #37cfa2; }
  .form-control:hover, .form-control:active, .form-control:focus {
    -webkit-box-shadow: none !important;
    box-shadow: none !important; }

.site-section {
  padding: 2.5em 0; }
  @media (min-width: 768px) {
    .site-section {
      padding: 5em 0; } }
  .site-section.site-section-sm {
    padding: 4em 0; }

.site-section-heading {
  padding-bottom: 20px;
  margin-bottom: 0px;
  position: relative;
  font-size: 2.5rem; }
  @media (min-width: 768px) {
    .site-section-heading {
      font-size: 3rem; } }

.border-top {
  border-top: 1px solid #edf0f5 !important; }

.site-footer {
  padding: 4em 0;
  background: #333333; }
  @media (min-width: 768px) {
    .site-footer {
      padding: 8em 0; } }
  .site-footer .border-top {
    border-top: 1px solid rgba(255, 255, 255, 0.1) !important; }
  .site-footer p {
    color: #737373; }
  .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5 {
    color: #fff; }
  .site-footer a {
    color: #999999; }
    .site-footer a:hover {
      color: white; }
  .site-footer ul li {
    margin-bottom: 10px; }
  .site-footer .footer-heading {
    font-size: 16px;
    color: #fff; }

.bg-text-line {
  display: inline;
  background: #000;
  -webkit-box-shadow: 20px 0 0 #000, -20px 0 0 #000;
  box-shadow: 20px 0 0 #000, -20px 0 0 #000; }

.text-white-opacity-05 {
  color: rgba(255, 255, 255, 0.5); }

.text-black-opacity-05 {
  color: rgba(0, 0, 0, 0.5); }

.hover-bg-enlarge {
  overflow: hidden;
  position: relative; }
  @media (max-width: 991.98px) {
    .hover-bg-enlarge {
      height: auto !important; } }
  .hover-bg-enlarge > div {
    -webkit-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1);
    -webkit-transition: .8s all ease-in-out;
    -o-transition: .8s all ease-in-out;
    transition: .8s all ease-in-out; }
  .hover-bg-enlarge:hover > div, .hover-bg-enlarge:focus > div, .hover-bg-enlarge:active > div {
    -webkit-transform: scale(1.2);
    -ms-transform: scale(1.2);
    transform: scale(1.2); }
  @media (max-width: 991.98px) {
    .hover-bg-enlarge .bg-image-md-height {
      height: 300px !important; } }

.bg-image {
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
  background-attachment: fixed; }
  .bg-image.overlay {
    position: relative; }
    .bg-image.overlay:after {
      position: absolute;
      content: "";
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      z-index: 0;
      width: 100%;
      background: rgba(0, 0, 0, 0.7); }
  .bg-image > .container {
    position: relative;
    z-index: 1; }

@media (max-width: 991.98px) {
  .img-md-fluid {
    max-width: 100%; } }

@media (max-width: 991.98px) {
  .display-1, .display-3 {
    font-size: 3rem; } }

.play-single-big {
  width: 90px;
  height: 90px;
  display: inline-block;
  border: 2px solid #fff;
  color: #fff !important;
  border-radius: 50%;
  position: relative;
  -webkit-transition: .3s all ease-in-out;
  -o-transition: .3s all ease-in-out;
  transition: .3s all ease-in-out; }
  .play-single-big > span {
    font-size: 50px;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-40%, -50%);
    -ms-transform: translate(-40%, -50%);
    transform: translate(-40%, -50%); }
  .play-single-big:hover {
    width: 120px;
    height: 120px; }

.overlap-to-top {
  margin-top: -150px; }

.ul-check {
  margin-bottom: 50px; }
  .ul-check li {
    position: relative;
    padding-left: 35px;
    margin-bottom: 15px;
    line-height: 1.5; }
    .ul-check li:before {
      left: 0;
      font-size: 20px;
      top: -.3rem;
      font-family: "icomoon";
      content: "\e5ca";
      position: absolute; }
  .ul-check.white li:before {
    color: #fff; }
  .ul-check.success li:before {
    color: #8bc34a; }
  .ul-check.primary li:before {
    color: #37cfa2; }

.select-wrap, .wrap-icon {
  position: relative; }
  .select-wrap .icon, .wrap-icon .icon {
    position: absolute;
    right: 10px;
    top: 50%;
    -webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%);
    font-size: 22px; }
  .select-wrap select, .wrap-icon select {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    width: 100%; }

/* Navbar */
.site-navbar {
  margin-bottom: 0px;
  z-index: 1999;
  position: absolute;
  width: 100%; }
  .site-navbar ul {
    font-family: "Oswald", sans-serif;
    text-transform: uppercase;
    font-weight: 300; }
  .site-navbar .site-logo {
    position: relative;
    left: 0;
    font-size: 1.7rem;
    font-weight: 900;
    text-transform: uppercase;
    font-family: "Oswald", sans-serif; }
    .site-navbar .site-logo a {
      color: #fff; }
  .site-navbar .site-navigation .site-menu {
    margin-bottom: 0; }
    .site-navbar .site-navigation .site-menu .active {
      display: inline-block;
      padding: 5px 20px; }
    .site-navbar .site-navigation .site-menu a {
      text-decoration: none !important;
      display: inline-block; }
    .site-navbar .site-navigation .site-menu > li {
      display: inline-block; }
      .site-navbar .site-navigation .site-menu > li > a {
        padding: 5px 20px;
        color: rgba(255, 255, 255, 0.5);
        display: inline-block;
        text-decoration: none !important; }
        .site-navbar .site-navigation .site-menu > li > a:hover {
          color: #fff; }
    .site-navbar .site-navigation .site-menu .has-children {
      position: relative; }
      .site-navbar .site-navigation .site-menu .has-children > a {
        position: relative;
        padding-right: 20px; }
        .site-navbar .site-navigation .site-menu .has-children > a:before {
          position: absolute;
          content: "\e313";
          font-size: 16px;
          top: 50%;
          right: 0;
          -webkit-transform: translateY(-50%);
          -ms-transform: translateY(-50%);
          transform: translateY(-50%);
          font-family: 'icomoon'; }
      .site-navbar .site-navigation .site-menu .has-children .dropdown {
        visibility: hidden;
        opacity: 0;
        top: 100%;
        position: absolute;
        text-align: left;
        border-top: 2px solid #37cfa2;
        -webkit-box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.1);
        box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.1);
        border-left: 1px solid #edf0f5;
        border-right: 1px solid #edf0f5;
        border-bottom: 1px solid #edf0f5;
        padding: 0px 0;
        margin-top: 20px;
        margin-left: 0px;
        background: #fff;
        -webkit-transition: 0.2s 0s;
        -o-transition: 0.2s 0s;
        transition: 0.2s 0s; }
        .site-navbar .site-navigation .site-menu .has-children .dropdown.arrow-top {
          position: absolute; }
          .site-navbar .site-navigation .site-menu .has-children .dropdown.arrow-top:before {
            bottom: 100%;
            left: 20%;
            border: solid transparent;
            content: " ";
            height: 0;
            width: 0;
            position: absolute;
            pointer-events: none; }
          .site-navbar .site-navigation .site-menu .has-children .dropdown.arrow-top:before {
            border-color: rgba(136, 183, 213, 0);
            border-bottom-color: #fff;
            border-width: 10px;
            margin-left: -10px; }
        .site-navbar .site-navigation .site-menu .has-children .dropdown a {
          text-transform: none;
          letter-spacing: normal;
          -webkit-transition: 0s all;
          -o-transition: 0s all;
          transition: 0s all;
          color: #343a40; }
        .site-navbar .site-navigation .site-menu .has-children .dropdown .active > a {
          color: #37cfa2 !important; }
        .site-navbar .site-navigation .site-menu .has-children .dropdown > li {
          list-style: none;
          padding: 0;
          margin: 0;
          min-width: 200px; }
          .site-navbar .site-navigation .site-menu .has-children .dropdown > li > a {
            padding: 9px 20px;
            display: block; }
            .site-navbar .site-navigation .site-menu .has-children .dropdown > li > a:hover {
              background: #f4f5f9;
              color: #25262a; }
          .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children > a:before {
            content: "\e315";
            right: 20px; }
          .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children > .dropdown, .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children > ul {
            left: 100%;
            top: 0; }
          .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children:hover > a, .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children:active > a, .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children:focus > a {
            background: #f4f5f9;
            color: #25262a; }
      .site-navbar .site-navigation .site-menu .has-children:hover > a, .site-navbar .site-navigation .site-menu .has-children:focus > a, .site-navbar .site-navigation .site-menu .has-children:active > a {
        color: #fff; }
      .site-navbar .site-navigation .site-menu .has-children:hover, .site-navbar .site-navigation .site-menu .has-children:focus, .site-navbar .site-navigation .site-menu .has-children:active {
        cursor: pointer; }
        .site-navbar .site-navigation .site-menu .has-children:hover > .dropdown, .site-navbar .site-navigation .site-menu .has-children:focus > .dropdown, .site-navbar .site-navigation .site-menu .has-children:active > .dropdown {
          -webkit-transition-delay: 0s;
          -o-transition-delay: 0s;
          transition-delay: 0s;
          margin-top: 0px;
          visibility: visible;
          opacity: 1; }

.site-mobile-menu {
  width: 300px;
  position: fixed;
  right: 0;
  z-index: 2000;
  padding-top: 20px;
  background: #fff;
  height: calc(100vh);
  -webkit-transform: translateX(110%);
  -ms-transform: translateX(110%);
  transform: translateX(110%);
  -webkit-box-shadow: -10px 0 20px -10px rgba(0, 0, 0, 0.1);
  box-shadow: -10px 0 20px -10px rgba(0, 0, 0, 0.1);
  -webkit-transition: .3s all ease-in-out;
  -o-transition: .3s all ease-in-out;
  transition: .3s all ease-in-out; }
  .offcanvas-menu .site-mobile-menu {
    -webkit-transform: translateX(0%);
    -ms-transform: translateX(0%);
    transform: translateX(0%); }
  .site-mobile-menu .site-mobile-menu-header {
    width: 100%;
    float: left;
    padding-left: 20px;
    padding-right: 20px; }
    .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-close {
      float: right;
      margin-top: 8px; }
      .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-close span {
        font-size: 30px;
        display: inline-block;
        padding-left: 10px;
        padding-right: 0px;
        line-height: 1;
        cursor: pointer;
        -webkit-transition: .3s all ease;
        -o-transition: .3s all ease;
        transition: .3s all ease; }
        .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-close span:hover {
          color: #25262a; }
    .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-logo {
      float: left;
      margin-top: 10px;
      margin-left: 0px; }
      .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-logo a {
        display: inline-block;
        text-transform: uppercase; }
        .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-logo a img {
          max-width: 70px; }
        .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-logo a:hover {
          text-decoration: none; }
  .site-mobile-menu .site-mobile-menu-body {
    overflow-y: scroll;
    -webkit-overflow-scrolling: touch;
    position: relative;
    padding: 0 20px 20px 20px;
    height: calc(100vh - 52px);
    padding-bottom: 150px; }
  .site-mobile-menu .site-nav-wrap {
    padding: 0;
    margin: 0;
    list-style: none;
    position: relative; }
    .site-mobile-menu .site-nav-wrap a {
      padding: 10px 20px;
      display: block;
      position: relative;
      color: #212529; }
      .site-mobile-menu .site-nav-wrap a:hover {
        color: #37cfa2; }
    .site-mobile-menu .site-nav-wrap li {
      position: relative;
      display: block; }
      .site-mobile-menu .site-nav-wrap li .active {
        color: #37cfa2; }
    .site-mobile-menu .site-nav-wrap .arrow-collapse {
      position: absolute;
      right: 0px;
      top: 10px;
      z-index: 20;
      width: 36px;
      height: 36px;
      text-align: center;
      cursor: pointer;
      border-radius: 50%; }
      .site-mobile-menu .site-nav-wrap .arrow-collapse:hover {
        background: #f8f9fa; }
      .site-mobile-menu .site-nav-wrap .arrow-collapse:before {
        font-size: 12px;
        z-index: 20;
        font-family: "icomoon";
        content: "\f078";
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%) rotate(-180deg);
        -ms-transform: translate(-50%, -50%) rotate(-180deg);
        transform: translate(-50%, -50%) rotate(-180deg);
        -webkit-transition: .3s all ease;
        -o-transition: .3s all ease;
        transition: .3s all ease; }
      .site-mobile-menu .site-nav-wrap .arrow-collapse.collapsed:before {
        -webkit-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%); }
    .site-mobile-menu .site-nav-wrap > li {
      display: block;
      position: relative;
      float: left;
      width: 100%; }
      .site-mobile-menu .site-nav-wrap > li > a {
        padding-left: 20px;
        font-size: 20px; }
      .site-mobile-menu .site-nav-wrap > li > ul {
        padding: 0;
        margin: 0;
        list-style: none; }
        .site-mobile-menu .site-nav-wrap > li > ul > li {
          display: block; }
          .site-mobile-menu .site-nav-wrap > li > ul > li > a {
            padding-left: 40px;
            font-size: 16px; }
          .site-mobile-menu .site-nav-wrap > li > ul > li > ul {
            padding: 0;
            margin: 0; }
            .site-mobile-menu .site-nav-wrap > li > ul > li > ul > li {
              display: block; }
              .site-mobile-menu .site-nav-wrap > li > ul > li > ul > li > a {
                font-size: 16px;
                padding-left: 60px; }
    .site-mobile-menu .site-nav-wrap[data-class="social"] {
      float: left;
      width: 100%;
      margin-top: 30px;
      padding-bottom: 5em; }
      .site-mobile-menu .site-nav-wrap[data-class="social"] > li {
        width: auto; }
        .site-mobile-menu .site-nav-wrap[data-class="social"] > li:first-child a {
          padding-left: 15px !important; }

.sticky-wrapper {
  position: absolute;
  z-index: 100;
  width: 100%;
  right: 0;
  left: 0; }
  .sticky-wrapper .site-navbar {
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease; }
  .sticky-wrapper .site-navbar {
    border-bottom: 1px solid rgba(255, 255, 255, 0.2); }
    .sticky-wrapper .site-navbar .site-logo a {
      color: #fff; }
    .sticky-wrapper .site-navbar ul li a {
      color: rgba(255, 255, 255, 0.7); }
      .sticky-wrapper .site-navbar ul li a:hover {
        color: #fff; }
      .sticky-wrapper .site-navbar ul li a.active {
        color: #fff; }
  .sticky-wrapper.is-sticky .site-menu-toggle .icon-menu {
    color: #000 !important; }
  .sticky-wrapper.is-sticky .site-navbar {
    background: #fff;
    border-bottom: 1px solid transparent;
    -webkit-box-shadow: 4px 0 20px -5px rgba(0, 0, 0, 0.2);
    box-shadow: 4px 0 20px -5px rgba(0, 0, 0, 0.2); }
    .sticky-wrapper.is-sticky .site-navbar .site-logo a {
      color: #000; }
    .sticky-wrapper.is-sticky .site-navbar ul li a {
      color: #000 !important; }
      .sticky-wrapper.is-sticky .site-navbar ul li a.active {
        color: #37cfa2 !important; }
  .sticky-wrapper .shrink {
    padding-top: 10px !important;
    padding-bottom: 10px !important; }

/* Blocks */
.site-block-wrap {
  min-height: 600px;
  height: calc(100vh);
  background: #222; }

.site-blocks-cover {
  background-size: cover;
  background-repeat: no-repeat;
  background-position: top;
  background-position: center center; }
  .site-blocks-cover > .container {
    z-index: 2;
    position: relative; }
  .site-blocks-cover.overlay {
    position: relative; }
    .site-blocks-cover.overlay:before {
      z-index: 1;
      position: absolute;
      content: "";
      left: 0;
      bottom: 0;
      right: 0;
      top: 0;
      background: rgba(0, 0, 0, 0.4); }
  .site-blocks-cover.overlay-2 {
    position: relative; }
    .site-blocks-cover.overlay-2:after {
      z-index: 1;
      position: absolute;
      content: "";
      left: 0;
      bottom: 0;
      right: 0;
      top: 0;
      background: rgba(0, 0, 0, 0.7);
      background: -moz-linear-gradient(top, rgba(0, 0, 0, 0.7) 0%, rgba(255, 255, 255, 0) 25%);
      background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(0, 0, 0, 0.7)), color-stop(25%, rgba(255, 255, 255, 0)));
      background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.7) 0%, rgba(255, 255, 255, 0) 25%);
      background: -o-linear-gradient(top, rgba(0, 0, 0, 0.7) 0%, rgba(255, 255, 255, 0) 25%);
      background: -ms-linear-gradient(top, rgba(0, 0, 0, 0.7) 0%, rgba(255, 255, 255, 0) 25%);
      background: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, 0.7)), color-stop(25%, rgba(255, 255, 255, 0)));
      background: linear-gradient(to bottom, rgba(0, 0, 0, 0.7) 0%, rgba(255, 255, 255, 0) 25%);
      filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#000000', endColorstr='#ffffff', GradientType=0 ); }
  .site-blocks-cover .text-shadow {
    text-shadow: 0px 0px 0px #000; }
  .site-blocks-cover .player {
    position: absolute;
    bottom: -250px;
    width: 100%; }
  .site-blocks-cover, .site-blocks-cover > .container > .row {
    min-height: 600px;
    height: calc(100vh); }
  .site-blocks-cover.inner-page-cover, .site-blocks-cover.inner-page-cover > .container > .row {
    min-height: 400px;
    height: calc(20vh); }
  .site-blocks-cover h1 {
    font-size: 3rem;
    font-weight: 400;
    color: #fff;
    font-weight: 900; }
    @media (max-width: 991.98px) {
      .site-blocks-cover h1 {
        font-size: 2rem; } }
  .site-blocks-cover p {
    color: white;
    font-size: 1.2rem;
    line-height: 1.5;
    font-weight: 300; }
  .site-blocks-cover .intro-text {
    font-size: 16px;
    line-height: 1.5; }
  @media (max-width: 991.98px) {
    .site-blocks-cover .display-1 {
      font-size: 3rem; } }
  .site-blocks-cover .btn:hover {
    background: #000;
    border-color: #000; }

.site-block-subscribe .btn {
  padding-left: 20px;
  padding-right: 20px; }

.site-block-subscribe .form-control {
  font-weight: 300;
  border-color: #fff !important;
  height: 80px;
  font-size: 22px;
  color: #fff;
  padding-left: 30px;
  padding-right: 30px; }
  .site-block-subscribe .form-control::-webkit-input-placeholder {
    /* Chrome/Opera/Safari */
    color: rgba(255, 255, 255, 0.5);
    font-weight: 200;
    font-style: italic; }
  .site-block-subscribe .form-control::-moz-placeholder {
    /* Firefox 19+ */
    color: rgba(255, 255, 255, 0.5);
    font-weight: 200;
    font-style: italic; }
  .site-block-subscribe .form-control:-ms-input-placeholder {
    /* IE 10+ */
    color: rgba(255, 255, 255, 0.5);
    font-weight: 200;
    font-style: italic; }
  .site-block-subscribe .form-control:-moz-placeholder {
    /* Firefox 18- */
    color: rgba(255, 255, 255, 0.5);
    font-weight: 200;
    font-style: italic; }

.bg-light {
  background: #ccc; }

.block-12 {
  position: relative; }
  .block-12 figure {
    position: relative; }
    .block-12 figure:before {
      content: '';
      position: absolute;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      background: -moz-linear-gradient(top, transparent 0%, transparent 18%, rgba(0, 0, 0, 0.8) 99%, rgba(0, 0, 0, 0.8) 100%);
      background: -webkit-linear-gradient(top, transparent 0%, transparent 18%, rgba(0, 0, 0, 0.8) 99%, rgba(0, 0, 0, 0.8) 100%);
      background: -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(18%, transparent), color-stop(99%, rgba(0, 0, 0, 0.8)), to(rgba(0, 0, 0, 0.8)));
      background: -o-linear-gradient(top, transparent 0%, transparent 18%, rgba(0, 0, 0, 0.8) 99%, rgba(0, 0, 0, 0.8) 100%);
      background: linear-gradient(to bottom, transparent 0%, transparent 18%, rgba(0, 0, 0, 0.8) 99%, rgba(0, 0, 0, 0.8) 100%);
      filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#cc000000',GradientType=0 ); }
  .block-12 .text-overlay {
    position: absolute;
    bottom: 20px;
    left: 20px;
    right: 20px;
    z-index: 10; }
    .block-12 .text-overlay h2 {
      color: #fff; }
  .block-12 .text {
    position: relative;
    top: -100px; }
    .block-12 .text .meta {
      text-transform: uppercase;
      padding-left: 40px;
      color: #fff;
      display: block;
      margin-bottom: 20px; }
    .block-12 .text .text-inner {
      -webkit-box-shadow: 0 0 20px -5px rgba(0, 0, 0, 0.3);
      box-shadow: 0 0 20px -5px rgba(0, 0, 0, 0.3);
      background: #fff;
      padding: 10px;
      margin-right: 30px;
      position: relative; }
      @media (min-width: 576px) {
        .block-12 .text .text-inner {
          padding: 20px; } }
      @media (min-width: 768px) {
        .block-12 .text .text-inner {
          padding: 30px 40px; } }
      .block-12 .text .text-inner:before {
        position: absolute;
        content: "";
        width: 80px;
        height: 4px;
        margin-top: -4px;
        background: #37cfa2;
        top: 0; }
      .block-12 .text .text-inner .heading {
        font-size: 20px;
        margin: 0;
        padding: 0; }

.block-16 figure {
  position: relative; }
  .block-16 figure .play-button {
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    font-size: 20px;
    width: 70px;
    height: 70px;
    background: #fff;
    display: block;
    border-radius: 50%;
    opacity: 1;
    color: #37cfa2 !important; }
    .block-16 figure .play-button:hover {
      opacity: 1; }
    .block-16 figure .play-button > span {
      position: absolute;
      left: 55%;
      top: 50%;
      -webkit-transform: translate(-60%, -50%);
      -ms-transform: translate(-60%, -50%);
      transform: translate(-60%, -50%); }

.block-25 ul, .block-25 ul li {
  padding: 0;
  margin: 0; }

.block-25 ul li a .image {
  -webkit-box-flex: 0;
  -ms-flex: 0 0 90px;
  flex: 0 0 90px; }
  .block-25 ul li a .image img {
    border-radius: 4px;
    max-width: 100%;
    opacity: 1;
    -webkit-transition: .3s all ease-in-out;
    -o-transition: .3s all ease-in-out;
    transition: .3s all ease-in-out; }

.block-25 ul li a .text .heading {
  font-size: 18px;
  line-height: 1.5;
  margin: 0;
  padding: 0;
  -webkit-transition: .3s all ease;
  -o-transition: .3s all ease;
  transition: .3s all ease;
  color: #999999; }

.block-25 ul li a .meta {
  color: #37cfa2; }

.block-25 ul li a:hover img {
  opacity: .5; }

.block-25 ul li a:hover .text .heading {
  color: #fff; }

#date-countdown .countdown-block {
  color: #b3b3b3; }

#date-countdown .label {
  font-size: 40px;
  color: #000; }

.next-match .image {
  width: 50px;
  border-radius: 50%; }

.site-block-27 ul, .site-block-27 ul li {
  padding: 0;
  margin: 0; }

.site-block-27 ul li {
  display: inline-block;
  margin-bottom: 4px; }
  .site-block-27 ul li a, .site-block-27 ul li span {
    text-align: center;
    display: inline-block;
    width: 40px;
    height: 40px;
    line-height: 40px;
    border-radius: 50%;
    border: 1px solid #ccc; }
  .site-block-27 ul li.active a, .site-block-27 ul li.active span {
    background: #37cfa2;
    color: #fff;
    border: 1px solid transparent; }

.site-block-feature-7 .icon {
  -webkit-transition: .2s all ease-in-out;
  -o-transition: .2s all ease-in-out;
  transition: .2s all ease-in-out;
  position: relative;
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1); }

.site-block-feature-7:hover .icon, .site-block-feature-7:focus .icon, .site-block-feature-7:active .icon {
  -webkit-transform: scale(1.2);
  -ms-transform: scale(1.2);
  transform: scale(1.2); }

.unit-1 {
  position: relative;
  width: 100%;
  overflow: hidden;
  display: block; }
  .unit-1:after {
    content: "";
    z-index: 1;
    position: absolute;
    bottom: 0;
    top: 0;
    left: 0;
    right: 0;
    background: -moz-linear-gradient(top, transparent 0%, transparent 18%, rgba(0, 0, 0, 0.8) 99%, rgba(0, 0, 0, 0.8) 100%);
    background: -webkit-linear-gradient(top, transparent 0%, transparent 18%, rgba(0, 0, 0, 0.8) 99%, rgba(0, 0, 0, 0.8) 100%);
    background: -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(18%, transparent), color-stop(99%, rgba(0, 0, 0, 0.8)), to(rgba(0, 0, 0, 0.8)));
    background: -o-linear-gradient(top, transparent 0%, transparent 18%, rgba(0, 0, 0, 0.8) 99%, rgba(0, 0, 0, 0.8) 100%);
    background: linear-gradient(to bottom, transparent 0%, transparent 18%, rgba(0, 0, 0, 0.8) 99%, rgba(0, 0, 0, 0.8) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#cc000000',GradientType=0 ); }
  .unit-1 img {
    -o-object-fit: cover;
    object-fit: cover;
    -webkit-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1); }
  .unit-1 img, .unit-1 .unit-1-text {
    -webkit-transition: .3s all ease-in-out;
    -o-transition: .3s all ease-in-out;
    transition: .3s all ease-in-out; }
  .unit-1 .unit-1-text {
    z-index: 2;
    position: absolute;
    bottom: -90px;
    color: #fff;
    display: block;
    width: 100%; }
    .unit-1 .unit-1-text .unit-1-heading {
      font-size: 1.5rem;
      position: relative; }
  .unit-1 p {
    opacity: 0;
    visibility: hidden;
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease;
    color: rgba(255, 255, 255, 0.5); }
  .unit-1:hover p {
    opacity: 1;
    visibility: visible; }
  .unit-1:hover .unit-1-text {
    bottom: 30px; }
  .unit-1:hover img {
    -webkit-transform: scale(1.05);
    -ms-transform: scale(1.05);
    transform: scale(1.05); }

.overlap-section {
  margin-top: -150px;
  position: relative;
  z-index: 9; }

.unit-4 .unit-4-icon {
  position: relative; }
  .unit-4 .unit-4-icon span {
    font-size: 3rem; }
  .unit-4 .unit-4-icon:before {
    position: absolute;
    content: "";
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background: #37cfa2;
    opacity: .2;
    z-index: -1;
    top: 10px;
    left: -20px; }

.unit-4 h3 {
  font-size: 20px;
  color: #000; }

.h-entry img {
  margin-bottom: 30px; }

.h-entry .meta {
  color: #b3b3b3;
  font-size: 14px; }

.h-entry h2 {
  font-size: 20px; }

.overlap-left {
  margin-left: -100px; }
  @media (max-width: 991.98px) {
    .overlap-left {
      margin-left: 0px; } }

.overlap-section {
  margin-top: -100px; }

.feature-1, .free-quote, .feature-3 {
  background: #37cfa2;
  padding: 30px 50px;
  color: rgba(255, 255, 255, 0.6);
  font-size: 15px; }
  .feature-1 .heading, .free-quote .heading, .feature-3 .heading {
    font-size: 22px;
    text-transform: uppercase;
    color: #fff; }
  .feature-1 .icon, .free-quote .icon, .feature-3 .icon {
    border: 2px solid rgba(255, 255, 255, 0.5);
    width: 80px;
    height: 80px;
    line-height: 80px;
    position: relative;
    border-radius: 50%;
    margin: 0 auto !important; }
    .feature-1 .icon > span, .free-quote .icon > span, .feature-3 .icon > span {
      font-size: 35px;
      color: #fff;
      position: absolute;
      top: 50%;
      left: 50%;
      -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%); }

.free-quote {
  background: #2ebf94; }
  .free-quote .form-control {
    border: 2px solid rgba(255, 255, 255, 0.5);
    background: none;
    color: #fff; }
    .free-quote .form-control:active, .free-quote .form-control:focus {
      border: 2px solid #fff; }
    .free-quote .form-control::-webkit-input-placeholder {
      /* Chrome/Opera/Safari */
      color: rgba(255, 255, 255, 0.4);
      font-size: 13px;
      font-style: italic; }
    .free-quote .form-control::-moz-placeholder {
      /* Firefox 19+ */
      color: rgba(255, 255, 255, 0.4);
      font-size: 13px;
      font-style: italic; }
    .free-quote .form-control:-ms-input-placeholder {
      /* IE 10+ */
      color: rgba(255, 255, 255, 0.4);
      font-size: 13px;
      font-style: italic; }
    .free-quote .form-control:-moz-placeholder {
      /* Firefox 18- */
      color: rgba(255, 255, 255, 0.4);
      font-size: 13px;
      font-style: italic; }

.feature-3 {
  background: #2cb78d; }

.testimonial {
  max-width: 800px;
  margin: 0 auto !important;
  text-align: center; }
  .testimonial blockquote {
    font-size: 1.5rem;
    font-style: italic; }
  .testimonial figure img {
    max-width: 100px;
    margin: 0 auto;
    border-radius: 50%; }

.breadcrumb-custom {
  font-size: 1rem !important; }

.text-muted {
  color: #ccc !important;
  font-size: 12px;
  text-transform: uppercase; }

.how-it-work-item .number {
  width: 50px;
  height: 50px;
  background: #37cfa2;
  color: #fff;
  line-height: 55px;
  font-weight: 300;
  display: inline-block;
  text-align: center;
  font-size: 30px;
  border-radius: 50%;
  margin-bottom: 40px; }

.how-it-work-item h2 {
  font-size: 18px;
  margin-bottom: 30px;
  color: #fff; }

.how-it-work-item p {
  color: white; }

.person h3 {
  font-size: 18px; }

.ul-social-circle {
  list-style: none;
  padding: 0;
  margin: 0; }
  .ul-social-circle li {
    display: inline-block;
    margin-left: 5px;
    margin-bottom: 5px; }
    .ul-social-circle li:first-child {
      margin-left: 0; }
    .ul-social-circle li span {
      width: 30px;
      height: 30px;
      background: #777;
      font-size: 13px;
      text-align: center;
      line-height: 30px;
      border-radius: 50%;
      display: inline-block; }
    .ul-social-circle li a span {
      color: #fff;
      -webkit-transition: .3s all ease;
      -o-transition: .3s all ease;
      transition: .3s all ease; }
    .ul-social-circle li a:hover span {
      background: #2b2b2b;
      color: #fff; }

.custom-pagination a, .custom-pagination span {
  width: 40px;
  height: 40px;
  line-height: 40px;
  border-radius: 50%;
  display: inline-block;
  background: #37cfa2;
  color: #fff; }

.custom-pagination span {
  background: #e6e6e6;
  color: #000; }

.custom-pagination .more-page {
  background: none;
  letter-spacing: .1em; }

.form-search-wrap {
  background: #fff;
  border-radius: 30px; }
  .form-search-wrap .form-control {
    border: none; }
    @media (max-width: 1199.98px) {
      .form-search-wrap .form-control {
        height: 55px; } }
  .form-search-wrap .btn {
    border-radius: 30px;
    padding: 10px 30px; }
    @media (max-width: 1199.98px) {
      .form-search-wrap .btn {
        width: 100% !important;
        display: block; } }

.popular-category {
  background: #fff;
  display: block;
  text-align: center;
  padding: 30px 10px;
  border-radius: 7px;
  background: #f8f9fa;
  position: relative; }
  .popular-category .icon {
    display: block;
    -webkit-transition: .1s all ease;
    -o-transition: .1s all ease;
    transition: .1s all ease; }
    .popular-category .icon > span {
      line-height: 0;
      font-size: 40px; }
  .popular-category .caption {
    color: #666666;
    -webkit-transition: .1s all ease;
    -o-transition: .1s all ease;
    transition: .1s all ease; }
  .popular-category .number {
    padding: 2px 20px;
    border-radius: 30px;
    display: inline-block;
    background: #e9ecef;
    color: #000;
    font-size: 14px;
    -webkit-transition: .1s all ease;
    -o-transition: .1s all ease;
    transition: .1s all ease; }
  .popular-category:hover {
    background: #37cfa2;
    -webkit-box-shadow: 0 5px 30px -5px rgba(55, 207, 162, 0.5);
    box-shadow: 0 5px 30px -5px rgba(55, 207, 162, 0.5); }
    .popular-category:hover .caption {
      color: #fff; }
    .popular-category:hover .icon {
      color: #fff; }
    .popular-category:hover .number {
      background: #2ebf94;
      color: #fff; }

@media (max-width: 1199.98px) {
  .no-sm-border {
    border: none !important; } }

.listing-item {
  position: relative;
  overflow: hidden;
  border-radius: 4px; }
  .listing-item:after {
    position: absolute;
    content: "";
    left: 0;
    right: 0;
    bottom: 0;
    top: 0;
    z-index: 1;
    background: rgba(0, 0, 0, 0.4); }
  .listing-item img {
    -o-object-fit: cover;
    object-fit: cover;
    height: 100%;
    width: 100%;
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease; }
  .listing-item:hover img {
    -webkit-transform: scale(1.2);
    -ms-transform: scale(1.2);
    transform: scale(1.2); }
  .listing-item .listing-item-content {
    position: absolute;
    bottom: 20px;
    padding-left: 20px;
    padding-right: 20px;
    z-index: 2;
    width: 100%; }
    .listing-item .listing-item-content .category {
      font-size: 12px;
      display: inline-block;
      padding: 5px 30px;
      background: #37cfa2;
      border-radius: 30px;
      color: #fff;
      letter-spacing: .2em;
      text-transform: uppercase; }
    .listing-item .listing-item-content h2 {
      font-size: 22px; }
      .listing-item .listing-item-content h2, .listing-item .listing-item-content h2 a {
        color: #fff; }
    .listing-item .listing-item-content span {
      color: #fff; }
    .listing-item .listing-item-content .address {
      color: rgba(255, 255, 255, 0.8); }
  .listing-item .bookmark {
    position: absolute;
    right: 20px;
    bottom: 0;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    display: inline-block;
    background: rgba(255, 255, 255, 0.3);
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease; }
    .listing-item .bookmark span {
      position: absolute;
      left: 50%;
      top: 50%;
      -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%); }
    .listing-item .bookmark:hover {
      background: #e81050; }
      .listing-item .bookmark:hover span {
        color: #fff; }

#slider-range {
  height: 8px; }
  #slider-range .ui-slider-handle {
    width: 16px;
    height: 16px;
    border-radius: 50%;
    border: none !important;
    background: #37cfa2; }
    #slider-range .ui-slider-handle:focus, #slider-range .ui-slider-handle:active {
      outline: none; }
  #slider-range .ui-slider-range {
    background-color: #37cfa2; }

.accordion-item[aria-expanded="true"] {
  color: #37cfa2; }

.social-media {
  display: inline-block;
  float: left;
  margin-bottom: 0px;
  padding: 0; }
  .social-media li {
    display: inline-block; }

.ft-feature-1 {
  margin-bottom: 80px; }
  .ft-feature-1 .ft-feature-1-content {
    padding: 30px;
    position: relative;
    z-index: 10; }
  .ft-feature-1 h2, .ft-feature-1 h3 {
    font-size: 20px;
    color: #fff; }
  .ft-feature-1 h3 {
    font-size: 18px; }
    .ft-feature-1 h3 .icon {
      font-size: 30px; }
  .ft-feature-1 a {
    color: #fff;
    text-decoration: underline; }
    .ft-feature-1 a:hover {
      color: #fff;
      text-decoration: none; }
  .ft-feature-1 .play {
    display: inline-block;
    width: 50px;
    height: 50px;
    background: #37cfa2;
    margin-right: 1.5rem;
    border-radius: 50%;
    line-height: 50px;
    text-align: center;
    text-decoration: none !important; }
    .ft-feature-1 .play span {
      color: #fff;
      display: inline; }
  .ft-feature-1 .img-feature {
    position: relative;
    margin-bottom: 30px; }
    @media (min-width: 992px) {
      .ft-feature-1 .img-feature {
        margin-bottom: -80px; } }
  .ft-feature-1 p {
    color: #737373; }

.box-with-humber {
  position: relative; }
  .box-with-humber .number-behind {
    font-size: 6rem;
    position: absolute;
    z-index: -1;
    top: -3rem;
    left: -3rem;
    font-weight: 900;
    color: #f2f4f5; }
  .box-with-humber h2 {
    font-size: 30px; }
    .box-with-humber h2 > span {
      font-size: 18px; }

.media-1 {
  position: relative;
  display: block;
  overflow: hidden;
  margin-bottom: 30px; }
  .media-1:after {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.8);
    content: "";
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease;
    opacity: 0;
    visibility: hidden; }
  .media-1 img {
    -o-object-fit: cover;
    object-fit: cover;
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease; }
  .media-1 .media-1-content {
    z-index: 4;
    top: 50%;
    position: absolute;
    width: 100%;
    text-align: center;
    -webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%); }
    .media-1 .media-1-content h2 {
      position: relative;
      color: #fff;
      font-size: 1.5rem;
      -webkit-transition: .4s all ease-in-out;
      -o-transition: .4s all ease-in-out;
      transition: .4s all ease-in-out;
      opacity: 0;
      visibility: hidden;
      bottom: -10px;
      margin-bottom: 0px; }
    .media-1 .media-1-content .category {
      position: relative;
      -webkit-transition: .3s all ease-in-out;
      -o-transition: .3s all ease-in-out;
      transition: .3s all ease-in-out;
      opacity: 0;
      bottom: -10px;
      visibility: hidden;
      color: #999999;
      font-size: 13px;
      text-transform: uppercase;
      letter-spacing: .2em; }
  .media-1:hover:after {
    opacity: 1;
    visibility: visible; }
  .media-1:hover h2 {
    bottom: 0px;
    opacity: 1;
    visibility: visible; }
  .media-1:hover .category {
    opacity: 1;
    visibility: visible;
    bottom: 0px;
    -webkit-transition-delay: 0.09s;
    -o-transition-delay: 0.09s;
    transition-delay: 0.09s; }
  .media-1:hover img {
    -webkit-transform: scale(1.05);
    -ms-transform: scale(1.05);
    transform: scale(1.05); }

.testimonial-wrap .owl-nav {
  display: none; }

.section-sub-title {
  font-size: 13px;
  color: #37cfa2;
  letter-spacing: .2em;
  text-transform: uppercase; }

.section-title {
  color: #37cfa2;
  font-size: 40px;
  font-weight: 900; }
  @media (max-width: 991.98px) {
    .section-title {
      font-size: 30px; } }

.position-relative {
  position: relative; }

.experience {
  position: absolute;
  bottom: -10px;
  right: -10px;
  background: #007bff;
  padding: 20px; }
  @media (max-width: 991.98px) {
    .experience {
      bottom: 0px;
      right: 0px; } }
  .experience span {
    display: block; }
  .experience .year {
    font-weight: 900;
    color: #fff;
    font-size: 3rem;
    letter-spacing: normal;
    line-height: 1.2; }
  .experience span {
    letter-spacing: .2em; }
  .experience .caption {
    color: #fff;
    letter-spacing: .4em;
    text-transform: uppercase; }

.footer-subscribe .btn {
  height: 43px; }
  .footer-subscribe .btn:hover {
    background: #fff;
    color: #000;
    border-color: #fff; }

.cta-big-image > .container {
  position: relative; }

.cta-big-image .img-box {
  background: #e81050;
  max-width: 550px;
  padding: 3rem;
  position: absolute;
  bottom: -10%;
  right: 10%; }
  @media (max-width: 991.98px) {
    .cta-big-image .img-box {
      position: relative;
      right: auto; } }
  .cta-big-image .img-box .sub-title {
    color: rgba(255, 255, 255, 0.7);
    text-transform: uppercase;
    font-size: 13px;
    letter-spacing: .1em;
    margin-bottom: 1.5rem;
    display: block; }
  .cta-big-image .img-box h2 {
    font-size: 2rem;
    color: #fff;
    margin-bottom: 1.5rem; }
  .cta-big-image .img-box p {
    font-size: 1.1rem;
    color: rgba(255, 255, 255, 0.9);
    font-weight: 300;
    margin-bottom: 1.5rem; }
  .cta-big-image .img-box .btn {
    background: #505288;
    border-color: #505288;
    color: #fff; }
  .cta-big-image .img-box *:last-child {
    margin-bottom: 0; }

.team-member {
  background: #f0f0f0; }
  .team-member figure {
    margin: 0;
    padding: 0;
    position: relative;
    overflow: hidden; }
    .team-member figure img {
      position: relative;
      -webkit-transition: .3s all ease;
      -o-transition: .3s all ease;
      transition: .3s all ease;
      -webkit-transform: scale(1);
      -ms-transform: scale(1);
      transform: scale(1);
      z-index: 1; }
  .team-member .social {
    position: absolute;
    margin: 0;
    padding: 0;
    left: 0;
    bottom: 0;
    padding: 10px;
    -webkit-transform: translateY(101%);
    -ms-transform: translateY(101%);
    transform: translateY(101%);
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease;
    background: #000;
    z-index: 2;
    width: 100%;
    text-align: center; }
    .team-member .social li {
      list-style: none;
      display: inline; }
      .team-member .social li a {
        display: inline-block;
        padding: 5px;
        color: #fff; }
  .team-member h3 {
    color: #000;
    margin: 0;
    bottom: 0;
    font-size: 1.4rem; }
  .team-member .position {
    color: #000; }
  .team-member:hover img {
    -webkit-transform: scale(1.05);
    -ms-transform: scale(1.05);
    transform: scale(1.05); }
  .team-member:hover .social {
    -webkit-transform: translateX(0%);
    -ms-transform: translateX(0%);
    transform: translateX(0%); }

.custom-direction {
  position: relative;
  z-index: 99;
  border-radius: 7px;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  padding: 20px;
  left: 50%;
  display: inline-block;
  background: #37cfa2; }
  .custom-direction a {
    text-decoration: none;
    color: #fff;
    text-transform: uppercase;
    margin: 10px; }

.sidebar-box {
  margin-bottom: 30px;
  padding: 25px;
  font-size: 15px;
  width: 100%;
  float: left;
  background: #fff; }
  .sidebar-box *:last-child {
    margin-bottom: 0; }
  .sidebar-box h3 {
    font-size: 18px;
    margin-bottom: 15px; }

.categories li, .sidelink li {
  position: relative;
  margin-bottom: 10px;
  padding-bottom: 10px;
  border-bottom: 1px dotted #dee2e6;
  list-style: none; }
  .categories li:last-child, .sidelink li:last-child {
    margin-bottom: 0;
    border-bottom: none;
    padding-bottom: 0; }
  .categories li a, .sidelink li a {
    display: block; }
    .categories li a span, .sidelink li a span {
      position: absolute;
      right: 0;
      top: 0;
      color: #ccc; }
  .categories li.active a, .sidelink li.active a {
    color: #000;
    font-style: italic; }

.comment-form-wrap {
  clear: both; }

.comment-list {
  padding: 0;
  margin: 0; }
  .comment-list .children {
    padding: 50px 0 0 40px;
    margin: 0;
    float: left;
    width: 100%; }
  .comment-list li {
    padding: 0;
    margin: 0 0 30px 0;
    float: left;
    width: 100%;
    clear: both;
    list-style: none; }
    .comment-list li .vcard {
      width: 80px;
      float: left; }
      .comment-list li .vcard img {
        width: 50px;
        border-radius: 50%; }
    .comment-list li .comment-body {
      float: right;
      width: calc(100% - 80px); }
      .comment-list li .comment-body h3 {
        font-size: 20px; }
      .comment-list li .comment-body .meta {
        text-transform: uppercase;
        font-size: 13px;
        letter-spacing: .1em;
        color: #ccc; }
      .comment-list li .comment-body .reply {
        padding: 5px 10px;
        background: #e6e6e6;
        color: #000;
        text-transform: uppercase;
        font-size: 14px; }
        .comment-list li .comment-body .reply:hover {
          color: #000;
          background: #e3e3e3; }

.search-form {
  background: #f7f7f7;
  padding: 10px; }
  .search-form .form-group {
    position: relative; }
    .search-form .form-group input {
      padding-right: 50px; }
  .search-form .icon {
    position: absolute;
    top: 50%;
    right: 20px;
    -webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%); }

.post-meta {
  font-size: 13px;
  text-transform: uppercase;
  letter-spacing: .2em; }
  .post-meta a {
    color: #fff;
    border-bottom: 1px solid rgba(255, 255, 255, 0.5); }

.arrow-down {
  position: absolute;
  left: 50%;
  -webkit-transform: translateX(-50%);
  -ms-transform: translateX(-50%);
  transform: translateX(-50%);
  font-size: 1.7rem;
  z-index: 2;
  color: #fff;
  bottom: 20px; }
  .arrow-down > span {
    -webkit-transition: .2s all ease;
    -o-transition: .2s all ease;
    transition: .2s all ease;
    position: relative;
    top: 0; }
  .arrow-down:hover {
    color: #fff; }
    .arrow-down:hover > span {
      top: -6px; }

.property img {
  -webkit-transition: .3s all ease;
  -o-transition: .3s all ease;
  transition: .3s all ease; }

.property .prop-details {
  font-size: .8rem; }
  .property .prop-details span.border-r {
    position: relative; }
    .property .prop-details span.border-r:after {
      width: 1px;
      height: 100%;
      position: absolute;
      content: "";
      right: -20px;
      background: #ccc;
      top: 0; }
  .property .prop-details .price {
    font-size: 1.2rem;
    color: #343a40;
    margin-bottom: .5rem;
    display: block; }

.property:hover img {
  -webkit-box-shadow: 0 40px 40px -5px rgba(0, 0, 0, 0.3);
  box-shadow: 0 40px 40px -5px rgba(0, 0, 0, 0.3); }

.property.horizontal {
  border-bottom: 1px solid #e9ecef;
  margin-bottom: 30px;
  padding-bottom: 30px; }
  .property.horizontal .img-entry {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 140px;
    flex: 0 0 140px; }
    .property.horizontal .img-entry img {
      border-radius: 8px; }
  .property.horizontal:hover img {
    -webkit-box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.2);
    box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.2); }

.font-family-2 {
  font-family: "Roboto", sans-serif !important; }

.custom-nav1 span {
  color: #ccc; }

.custom-nav1 a {
  text-transform: uppercase;
  letter-spacing: .1rem;
  display: inline-block;
  padding: 10px 30px;
  background: #eee;
  font-size: 12px;
  border-radius: 0px;
  color: #000; }
  .custom-nav1 a:hover {
    color: #000;
    background: #e4e4e4; }

.how-it-works .custom-icon {
  font-size: 2.5rem; }

.how-it-works h3 {
  font-size: 1.2rem;
  margin-bottom: 1rem; }

.with-dots .owl-dots {
  margin-top: 20px;
  margin-bottom: 20px;
  text-align: center;
  position: absolute;
  bottom: 50px;
  width: 100%; }
  .with-dots .owl-dots .owl-dot {
    display: inline-block; }
    .with-dots .owl-dots .owl-dot span {
      width: 12px !important;
      height: 12px !important;
      border-radius: 50%;
      background: transparent;
      display: inline-block;
      margin: 4px;
      border: 2px solid #fff; }
    .with-dots .owl-dots .owl-dot.active span {
      border-color: #37cfa2;
      background: #37cfa2; }

.property-status {
  position: absolute;
  top: 0;
  right: 0;
  background: #37cfa2;
  font-size: .85rem;
  color: #fff;
  display: inline-block;
  padding: 2px 7px; }

.large-gutters {
  margin-right: -35px;
  margin-left: -35px; }
  .large-gutters > [class*="col-"] {
    padding-right: 35px;
    padding-left: 35px; }

.ftco-media-1 > .ftco-media-1-inner {
  position: relative; }
  .ftco-media-1 > .ftco-media-1-inner:after {
    position: absolute;
    content: "";
    right: 0px;
    bottom: 0px;
    top: 20px;
    background: #000;
    width: 100%;
    z-index: -1;
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease;
    opacity: 0;
    visibility: hidden; }

.ftco-media-1 .ftco-media-details {
  -webkit-transition: .3s all ease;
  -o-transition: .3s all ease;
  transition: .3s all ease; }

.ftco-media-1 h3 {
  font-size: 20px;
  color: #000;
  margin-bottom: 0; }

.ftco-media-1 p {
  margin-bottom: 0; }

.ftco-media-1 strong {
  font-weight: normal; }

.ftco-media-1:hover > .ftco-media-1-inner:after, .ftco-media-1:focus > .ftco-media-1-inner:after {
  right: -20px;
  bottom: -20px;
  opacity: 1;
  visibility: visible; }
  @media (max-width: 767.98px) {
    .ftco-media-1:hover > .ftco-media-1-inner:after, .ftco-media-1:focus > .ftco-media-1-inner:after {
      right: 0; } }

.ftco-media-1:hover .ftco-media-details, .ftco-media-1:focus .ftco-media-details {
  position: relative;
  -webkit-transform: translateX(45px);
  -ms-transform: translateX(45px);
  transform: translateX(45px); }
  @media (max-width: 767.98px) {
    .ftco-media-1:hover .ftco-media-details, .ftco-media-1:focus .ftco-media-details {
      -webkit-transform: translateX(25px);
      -ms-transform: translateX(25px);
      transform: translateX(25px); } }

.ftco-media-1:hover h3, .ftco-media-1:focus h3 {
  color: #fff; }

.ftco-media-1:hover p, .ftco-media-1:hover strong, .ftco-media-1:focus p, .ftco-media-1:focus strong {
  color: #939393; }

.ftco-testimonial-1 .ftco-testimonial-vcard img {
  width: 50px;
  height: 50px;
  border-radius: 50%; }

.ftco-testimonial-1 .ftco-testimonial-vcard h3 {
  font-size: 1.2rem;
  display: block;
  margin-bottom: 0; }

.ftco-testimonial-1 .ftco-testimonial-vcard span {
  color: #c4c4c4; }

.ftco-testimonial-1 p {
  color: #a2a2a2; }

.gototop {
  width: 50px;
  height: 50px;
  position: fixed;
  right: 20px;
  z-index: 99;
  background: #37cfa2;
  text-align: center;
  line-height: 50px;
  -webkit-box-shadow: 0 10px 20px 0 rgba(0, 0, 0, 0.2);
  box-shadow: 0 10px 20px 0 rgba(0, 0, 0, 0.2);
  bottom: -100px; }
  .gototop.active {
    bottom: 20px; }
  .gototop span {
    font-size: 20px;
    color: #fff; }

.first-step, .second-step {
  position: relative; }
  .first-step:after, .second-step:after {
    width: 30%;
    content: "";
    background: #000;
    height: 1px;
    top: 50%;
    position: absolute;
    left: 100%;
    -webkit-transform: translateX(-50%);
    -ms-transform: translateX(-50%);
    transform: translateX(-50%); }
    @media (max-width: 991.98px) {
      .first-step:after, .second-step:after {
        display: none; } }
</style>
    <!-- footer 내용 -->
<footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="row">
              <div class="col-md-5">
                <h2 class="footer-heading mb-4">About Us</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque facere laudantium magnam voluptatum autem. Amet aliquid nesciunt veritatis aliquam.</p>
              </div>
              <div class="col-md-3 mx-auto">
                <h2 class="footer-heading mb-4">Quick Links</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              
            </div>
          </div>
          <div class="col-md-4">
            <div class="mb-4">
              <h2 class="footer-heading mb-4">Subscribe Newsletter</h2>
            <form action="#" method="post" class="footer-subscribe">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-black" type="button" id="button-addon2">Send</button>
                </div>
              </div>
            </form>  
            </div>
            
            <div class="">
              <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
            </div>


          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <!-- Link back to Free-Template.co can't be removed. Template is licensed under CC BY 3.0. -->
            <p class="copyright"><small>&copy; <script>document.write(new Date().getFullYear());</script> Warehouse. All Rights Reserved.  Design by <a href="https://free-template.co" target="_blank">Free-Template.co</a></small></p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
    
    <!-- aos(라이브러리)가 화면이 로드되기 전에 먼저 실행돼서 -->
    <!-- script들을 밑으로 뺐음 -->
    <script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.countdown.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath }/js/aos.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.fancybox.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.sticky.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blvnsl_css_inclde', 'blvnsl_css_newurl', 'blvnsl_js_inclde', 'blvnsl_js_newurl', 'blvnsl_facebookbtn_login', 'blvnsl_googlebtn_login', 'blvnsl_twitterbtn_login', 'blvnsl_facebookbtn_WP_Members', 'blvnsl_googlebtn_WP_Members', 'blvnsl_twitterbtn_WP_Members', 'blvnsl_jquery_loginpage', 'blvnsl_jquery_WP_Members');


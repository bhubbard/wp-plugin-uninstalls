#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blvnsl_css_inclde'
wp option delete 'blvnsl_css_newurl'
wp option delete 'blvnsl_js_inclde'
wp option delete 'blvnsl_js_newurl'
wp option delete 'blvnsl_facebookbtn_login'
wp option delete 'blvnsl_googlebtn_login'
wp option delete 'blvnsl_twitterbtn_login'
wp option delete 'blvnsl_facebookbtn_WP_Members'
wp option delete 'blvnsl_googlebtn_WP_Members'
wp option delete 'blvnsl_twitterbtn_WP_Members'
wp option delete 'blvnsl_jquery_loginpage'
wp option delete 'blvnsl_jquery_WP_Members'


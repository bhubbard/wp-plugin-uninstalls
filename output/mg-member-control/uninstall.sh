#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mgmc_disableusers'
wp option delete 'mgmc_hidedashboard'
wp option delete 'mgmc_hidemenuitems'
wp option delete 'mgmc_recaptchasitekey'
wp option delete 'mgmc_simplecaptcha'
wp option delete 'mgmc_passcomplex'
wp option delete 'mgmc_replacementfooter'
wp option delete 'mgmc_salt'
wp option delete 'mgmc_emailwelcomecontent'
wp option delete 'mgmc_emailwelcomesubject'
wp option delete 'mgmc_emailvalidationcontent'
wp option delete 'mgmc_emailvalidationsubject'
wp option delete 'mgmc_logoutredirect'
wp option delete 'mgmc_logoutredirecturl'
wp option delete 'mgmc_emailwelcome'
wp option delete 'mgmc_validateuserurl'
wp option delete 'mgmc_loginredirect'
wp option delete 'mgmc_loginredirecturl'
wp option delete 'mgmc_emailusername'
wp option delete 'mgmc_recaptchasecretkey'
wp option delete 'mgmc_emailvalidation'
wp option delete 'mgmc_emailnotification'
wp option delete 'mgmc_hidebyauthor'
wp option delete 'mgmc_hideentrylink'
wp option delete 'mgmc_hideformtitle'
wp option delete 'mgmc_termsconditions'
wp option delete 'mgmc_termsconditionstxt'
wp option delete 'mgmc_termsconditionsmsg'
wp option delete 'mgmc_overrideregister'
wp option delete 'mgmc_hideregister'
wp option delete 'mgmc_hidepasswordreset'
wp option delete 'mgmc_showavatarf'
wp option delete 'mgmc_showuserf'
wp option delete 'mgmc_showlogout'
wp option delete 'mgmc_hideadminbar'
wp option delete 'mgmc_validateipaccess'
wp option delete 'mgmc_loginrename'
wp option delete 'mgmc_loginrenameslug'
wp option delete 'mgmc_loginurl'
wp option delete 'mgmc_hideavatarw'
wp option delete 'mgmc_hideuserw'
wp option delete 'mgmc_reseturl'
wp option delete 'mgmc_registerurl'
wp option delete 'mgmc_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mgmc_disableuser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mgmc_disableuser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mgmc_disableuser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mgmc_disableuser'"

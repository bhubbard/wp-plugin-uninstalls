#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gSendtofriend_fromname'
wp option delete 'gSendtofriend_fromemail'
wp option delete 'gSendtofriend_mailcontent'
wp option delete 'gSendtofriend_subject'
wp option delete 'gSendtofriend_On_Homepage'
wp option delete 'gSendtofriend_On_Posts'
wp option delete 'gSendtofriend_On_Pages'
wp option delete 'gSendtofriend_captcha'
wp option delete 'gSendtofriend_captcha_secret'
wp option delete 'gSendtofriend_captcha_sitekey'
wp option delete 'gSendtofriend_message'
wp option delete 'gSendtofriend_On_Archives'
wp option delete 'gSendtofriend_On_Search'
wp option delete 'gSendtofriend_title'
wp option delete 'gSendtofriend_title_sm'
wp option delete 'gSendtofriend_homeurl'


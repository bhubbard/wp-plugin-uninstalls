#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pd_default_color'
wp option delete 'pd_default_color_array'
wp option delete 'pd_latestpoll'
wp option delete 'pd_recaptcha_enable'
wp option delete 'pd_recaptcha_sitekey'
wp option delete 'pd_recaptcha_secretkey'
wp option delete 'pd_currentpoll'
wp option delete 'pd_close'
wp option delete 'pd_logging_method'
wp option delete 'pd_cookielog_expiry'
wp option delete 'pd_allowtovote'
wp option delete 'pd_bar'
wp option delete 'pd_ans_sortby'
wp option delete 'pd_ans_sortorder'
wp option delete 'pd_ans_result_sortby'
wp option delete 'pd_ans_result_sortorder'
wp option delete 'poll_template_disable'
wp option delete 'poll_cookielog_expiry'

# Clear Cron Jobs
wp cron event delete 'poll_dude_cron'


#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpfm_opt_in_choice_cool_translations'
wp option delete 'atlt_feedback_opt_in'
wp option delete 'cpt_dashboard_data'
wp option delete 'cpt_review_notice_dismissed'
wp option delete 'atlt-install-date'
wp option delete 'atlt_initial_save_version'
wp option delete 'atlt-already-rated'
wp option delete 'atlt-ratingDiv'
wp option delete 'atlt-pro-version'
wp option delete 'atlt_do_activation_redirect'
wp option delete 'atlt-version'
wp option delete 'atlt-installDate'
wp option delete 'atlt-type'

# Delete Transients
wp transient delete 'loco_current_translation'

# Clear Cron Jobs
wp cron event delete 'atlt_extra_data_update'


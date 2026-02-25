#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epta-install-date'
wp option delete 'epta_initial_save_version'
wp option delete 'tecset-installDate'
wp option delete 'tecset-ratingDiv'
wp option delete 'epta_elementor_notice_dismissed'
wp option delete 'tec_tribe_single_event_page'
wp option delete 'tecset-single-page-id'
wp option delete 'cpfm_opt_in_choice_cool_events'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'epta_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-apply-on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-apply-on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-apply-on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-apply-on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-categoery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-categoery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-categoery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-categoery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-specific-event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-specific-event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-specific-event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-specific-event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-select-temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-select-temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-select-temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-select-temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-primary-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-primary-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-primary-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-primary-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-secondary-alternate-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-secondary-alternate-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-secondary-alternate-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-secondary-alternate-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-alternate-primary-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-alternate-primary-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-alternate-primary-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-alternate-primary-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tecset-date-format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tecset-date-format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tecset-date-format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tecset-date-format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epta-custom-css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epta-custom-css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epta-custom-css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epta-custom-css'"

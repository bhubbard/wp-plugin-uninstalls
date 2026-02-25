#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mystickyelements-widgets'
wp option delete 'mse_help_cta'
wp option delete 'stickyelements_widgets'
wp option delete 'get_mystickyelements_page_views'
wp option delete 'mystickyelements_hide_review_box'
wp option delete 'mystickyelements_show_review_box_after'
wp option delete 'hide_mserecommended_plugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after'"
wp option delete 'mystickyelements-contact-form'
wp option delete 'mystickyelements-contact-field'
wp option delete 'mystickyelements-social-channels'
wp option delete 'mystickyelements-social-channels-tabs'
wp option delete 'mystickyelements-general-settings'
wp option delete 'mystickyelements-contact-mail-sent'
wp option delete 'mystickyelements_intro_popup'
wp option delete 'myStickyelements_show_leads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-social-channels-tabs%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-contact-field%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-contact-form%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-social-channels%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-general-settings%'"
wp option delete 'mse_redirect'
wp option delete 'mysticky_elements_options'
wp option delete 'mysticky_elements_options0'
wp option delete 'mysticky_elements_options1'
wp option delete 'mysticky_elements_options2'
wp option delete 'mysticky_elements_options3'
wp option delete 'mysticky_elements_options4'
wp option delete 'mysticky_elements_options5'
wp option delete 'mysticky_elements_options6'
wp option delete 'mysticky_elements_options7'
wp option delete 'mysticky_elements_options8'
wp option delete 'mysticky_elements_options9'
wp option delete 'default_post_edit_rows'
wp option delete 'mystickyelements-update_2_0'


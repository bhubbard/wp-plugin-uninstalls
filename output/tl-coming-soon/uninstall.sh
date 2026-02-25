#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tlcs_general_options'
wp option delete 'tlcs_template_options'
wp option delete 'tlcs_design_options'
wp option delete 'tlcs_social_options'
wp option delete 'tlcs_translation_options'
wp option delete 'tlcs_support_options'
wp option delete 'tlcs_design_options_campaign_monitor_clients'
wp option delete 'tlcs_design_options_campaign_monitor_lists'
wp option delete 'tlcs_design_options_convertkit_forms'
wp option delete 'tlcs_design_options_getresponse_campaigns'
wp option delete 'tlcs_design_options_mailchimp_lists'
wp option delete 'tlcs_design_options_sendinblue_lists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tlcs_design_options_%'"


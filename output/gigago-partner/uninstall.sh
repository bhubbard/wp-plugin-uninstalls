#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gigago_partner_endpoint_url'
wp option delete 'gigago_partner_client_id'
wp option delete 'gigago_partner_brand_name'
wp option delete 'gigago_partner_access_code'
wp option delete 'gigago_partner_secure_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subject'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_signature'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bcc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_description'"
wp option delete 'gigago_partner_email_template_1_description'
wp option delete 'gigago_partner_email_template_1_custom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ggg_plan_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ggg_plan_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ggg_plan_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ggg_plan_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ggg_plan_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ggg_plan_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ggg_plan_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ggg_plan_name'"

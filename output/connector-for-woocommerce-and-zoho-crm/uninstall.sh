#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp_wczc_zoho_api2_token'
wp option delete 'pp_wczc_zoho_client_id'
wp option delete 'pp_wczc_zoho_client_secret'
wp option delete 'pp_wczc_zoho_email'
wp option delete 'pp_wczc_zoho_host'
wp option delete 'pp_wczc_zoho_api_token'
wp option delete 'pp_wczc_no_ssl_verify'
wp option delete 'pp_wczc_add_contacts'
wp option delete 'pp_wczc_update_contacts'
wp option delete 'pp_wczc_contacts_lead_source'
wp option delete 'pp_wczc_add_leads'
wp option delete 'pp_wczc_update_leads'
wp option delete 'pp_wczc_leads_lead_source'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pp_wczc_zoho_fields_%' OR option_name LIKE '_site_transient_pp_wczc_zoho_fields_%'"


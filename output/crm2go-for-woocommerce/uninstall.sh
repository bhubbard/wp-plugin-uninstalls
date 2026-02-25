#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'c2g_wcc_crm2go_api_url'
wp option delete 'c2g_wcc_crm2go_api_token'
wp option delete 'c2g_wcc_crm2go_email'
wp option delete 'c2g_wcc_crm2go_slang'
wp option delete 'c2g_wcc_crm2go_usuario'
wp option delete 'c2g_wcc_crm2go_nombreCompleto'
wp option delete 'c2g_wcc_add_contacts'
wp option delete 'c2g_wcc_update_contacts'
wp option delete 'c2g_wcc_contacts_lead_source'
wp option delete 'c2g_wcc_add_order_details'
wp option delete 'c2g_wcc_add_order_notify'


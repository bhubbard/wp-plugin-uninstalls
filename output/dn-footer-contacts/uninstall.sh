#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dn_footer_contacts-fields'
wp option delete 'dn_footer_contacts-last_id'
wp option delete 'dn_footer_contacts-invitation'
wp option delete 'dn_footer_contacts-settings'
wp option delete 'dn_footer_contacts-stats'


#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcpt-statusoptions'
wp option delete 'wcpt-ticketno'
wp option delete 'wcpt-status'
wp option delete 'wcpt-type'
wp option delete 'wcpt-priority'
wp option delete 'wcpt-product'
wp option delete 'wcpt-attachment'
wp option delete 'wcpt-closedate'
wp option delete 'wcpt-metafield1'
wp option delete 'wcpt-custextfield'
wp option delete 'wcpt-users'
wp option delete 'wcpt-ticketno-fr'
wp option delete 'wcpt-status-fr'
wp option delete 'wcpt-type-fr'
wp option delete 'wcpt-priority-fr'
wp option delete 'wcpt-product-fr'
wp option delete 'wcpt-attachment-fr'
wp option delete 'wcpt-closedate-fr'
wp option delete 'wcpt-metafield1fr'
wp option delete 'wcpt-typeoptions'
wp option delete 'wcpt-priorityoption'
wp option delete 'wcpt-adminsubject'
wp option delete 'wcpt-admin_to'
wp option delete 'wcpt-customersubject'
wp option delete 'wcpt-customer_to'
wp option delete 'wcpt-deletedata'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_closedate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_closedate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_closedate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_closedate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custextfieldval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custextfieldval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custextfieldval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custextfieldval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_second_featured_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_second_featured_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_second_featured_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_second_featured_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_no'"

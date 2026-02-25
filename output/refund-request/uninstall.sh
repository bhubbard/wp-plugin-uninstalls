#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Refund-Request_email_address'
wp option delete 'refund_requests_enabled'
wp option delete 'refund_request_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_subtotal_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_subtotal_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_subtotal_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_subtotal_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'משקל (kg)'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'משקל (kg)'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'משקל (kg)'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'משקל (kg)'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"

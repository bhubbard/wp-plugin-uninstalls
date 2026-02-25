#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tlb_show_logged_in'
wp option delete 'tlb_show_logged_out'
wp option delete 'tlb_remember_user_role'
wp option delete 'tlb_redirect_after_login'
wp option delete 'tlb_cookie_expire'
wp option delete 'tlb_uninstall_delete'


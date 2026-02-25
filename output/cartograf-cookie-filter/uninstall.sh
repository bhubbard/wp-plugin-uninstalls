#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cg_cf_accept_timeout'
wp option delete 'cg_cf_text'
wp option delete 'cg_cf_accept_scrollout'
wp option delete 'cg_cf_head_accepted_code'
wp option delete 'cg_cf_head_denied_code'
wp option delete 'cg_cf_foot_accepted_code'
wp option delete 'cg_cf_foot_denied_code'
wp option delete 'cg_cf_exception_pages'


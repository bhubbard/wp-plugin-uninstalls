#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shf_admin_footer_content'
wp option delete 'shf_admin_header_content'
wp option delete 'shf_footer_content'
wp option delete 'shf_header_content'
wp option delete 'shf_add_to_admin_footer'


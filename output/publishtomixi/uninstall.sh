#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'p2mixi_username'
wp option delete 'p2mixi_password'
wp option delete 'p2mixi_id'
wp option delete 'p2mixi_header_default'
wp option delete 'p2mixi_footer_default'
wp option delete 'p2mixi_default'


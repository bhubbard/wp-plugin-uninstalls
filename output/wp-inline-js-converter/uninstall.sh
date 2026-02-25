#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wijc_active'
wp option delete 'wijc_tofile'
wp option delete 'wijc_tofile_css'
wp option delete 'wijc_compress'
wp option delete 'wijc_compress_css'
wp option delete 'wijc_compress_html'


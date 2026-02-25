#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qrgen4all_sitetoken'
wp option delete 'qrgen4all_ctoken'
wp option delete 'qrgen4all_tsv'


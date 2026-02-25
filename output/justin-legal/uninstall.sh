#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'justin_legal_hash'
wp option delete 'justin_legal_lawFirmName'
wp option delete 'justin_legal_emailAddress'
wp option delete 'justin_legal_hex'
wp option delete 'justin_legal_font'
wp option delete 'justin_legal_borderState'


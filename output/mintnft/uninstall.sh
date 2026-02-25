#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MintNFT_option_name'
wp option delete 'MintToken'
wp option delete 'Mintdeployeraddress'
wp option delete 'MintOwnerEmail'
wp option delete 'MintApikey'


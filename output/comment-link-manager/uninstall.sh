#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clm_remNFAuthor'
wp option delete 'clm_addNWAuthor'
wp option delete 'clm_remNFComment'
wp option delete 'clm_addNWComment'
wp option delete 'clm_safeNumber'


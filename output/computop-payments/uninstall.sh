#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'computop_merchant_id'
wp option delete 'computop_encryption_key'
wp option delete 'computop_hash_key'
wp option delete 'computop_ideal_issuers'
wp option delete 'computop_sandbox_mode'


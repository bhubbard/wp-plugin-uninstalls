#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srx_canonical_check'
wp option delete 'srx_internal_check'
wp option delete 'srx_metaval_check'
wp option delete 'srx-metatitle-check'
wp option delete 'srx-whitelist-kwd'
wp option delete 'srx-whitelist-kwd-box'
wp option delete 'srx_popup_open'


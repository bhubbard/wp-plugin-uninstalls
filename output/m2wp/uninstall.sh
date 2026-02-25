#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp option delete 'm2i_mage_default_store_code'
wp option delete 'm2i_mage_base_url'
wp option delete 'm2i_notices'


#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'falke_mdm_versionhint'
wp option delete 'falke_mdm_upgrade_notice'
wp option delete 'multidomainplugin_tabsettings'
wp option delete 'multidomainplugin_options'
wp option delete 'falke_mdm_settings'
wp option delete 'falke_mdm_mappings'
wp option delete 'falke_mdm_notice'


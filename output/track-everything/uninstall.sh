#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ethoseo_hide_ethoseo'
wp option delete 'ethoseo_te_dictionary'
wp option delete 'ethoseo_te_trackforms'
wp option delete 'ethoseo_te_trackoutbound'
wp option delete 'ethoseo_te_tracksearchforms'
wp option delete 'ethoseo_te_trackemail'
wp option delete 'ethoseo_te_trackgooglerank'
wp option delete 'ethoseo_te_universal'
wp option delete 'ethoseo_te_infooter'
wp option delete 'ethoseo_te_debug'
wp option delete 'ethoseo_te_special'
wp option delete 'ethoseo_te_activated'


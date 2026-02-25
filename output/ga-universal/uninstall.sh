#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ethoseo_gau_properties'
wp option delete 'ethoseo_gau_titleoverride'
wp option delete 'ethoseo_gau_before'
wp option delete 'ethoseo_gau_after'
wp option delete 'ethoseo_gau_infooter'
wp option delete 'ethoseo_gau_debug'
wp option delete 'ethoseo_gau_consoledebug'
wp option delete 'ethoseo_gau_overridetitle'
wp option delete 'ethoseo_gau_hide_ethoseo'
wp option delete 'ethoseo_gau_activated'
wp option delete 'ethoseo_gau_hidefor'


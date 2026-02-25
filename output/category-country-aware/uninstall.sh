#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccax_options'
wp option delete 'cookie_notice_options'
wp option delete 'cca_configcodes'
wp option delete 'CCA_WID_VERSION'
wp option delete 'CCA_VIRGIN_INSTALL'
wp option delete 'ccax_post_widgets'
wp option delete 'cc_maxmind_status'
wp option delete 'ccax_maxmind_status'


#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opalmedical_settings'
wp option delete 'elementor_cpt_support'
wp option delete 'opalmedical_version'
wp option delete 'opalmedical_version_upgraded_from'
wp option delete 'opalmedical_setup'

# Delete Transients
wp transient delete '_opalmedical_installed'
wp transient delete '_opalmedical_activation_redirect'


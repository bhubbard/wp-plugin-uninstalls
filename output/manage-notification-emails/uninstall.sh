#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'registrationnotification'
wp option delete 'fa_mne_version'
wp option delete 'famne_options'
wp option delete 'famne_network_managed'


#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdoctorAgenda-email'
wp option delete 'wpdoctorAgenda-password'
wp option delete 'wpdoctorAgenda-installed'
wp option delete 'wp-doctorAgenda'


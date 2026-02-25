#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbpd_hide_from_subsite'
wp option delete 'bbpd_template'
wp option delete 'bbpd_template_dismissible'
wp option delete 'bbpd_template_site'


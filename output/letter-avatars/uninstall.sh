#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgi_ltrav_ver'
wp option delete 'sgi_ltrav_opts'

# Delete Transients
wp transient delete 'sgi_ltrav_gfonts'


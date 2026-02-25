#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shp_fbinfo'
wp option delete 'shp_twinfo'
wp option delete 'shp_gpinfo'
wp option delete 'shp_plinfo'
wp option delete 'shp_pldesc'
wp option delete 'shp_spage'
wp option delete 'shp_sfbbut'
wp option delete 'shp_stwbut'
wp option delete 'shp_sgpbut'
wp option delete 'shp_butpos'


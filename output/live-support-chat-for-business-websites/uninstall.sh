#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ims_siteid'
wp option delete 'ims_imageid'
wp option delete 'ims_popup'
wp option delete 'ims_popuptime'
wp option delete 'ims_popupimage'
wp option delete 'ims_popupbutton'
wp option delete 'ims_popupheight'
wp option delete 'ims_popupwidth'
wp option delete 'ims_popuptop'
wp option delete 'ims_popupleft'
wp option delete 'ims_uploaded'
wp option delete 'ims_position'
wp option delete 'ims_username'
wp option delete 'ims_password'
wp option delete 'ims_leftcss'
wp option delete 'ims_topcss'
wp option delete 'ims_fixed'


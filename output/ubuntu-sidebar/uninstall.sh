#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_offset'
wp option delete 'ubuntu-com_image'
wp option delete 'ubuntu-com_link'
wp option delete 'ubuntu-loco_image'
wp option delete 'ubuntu-loco_link'
wp option delete 'why-ubuntu_image'
wp option delete 'why-ubuntu_link'
wp option delete 'ubuntu-tour_image'
wp option delete 'ubuntu-tour_link'
wp option delete 'download-ubuntu_image'
wp option delete 'download-ubuntu_link'
wp option delete 'ubuntu-dvd_image'
wp option delete 'ubuntu-dvd_link'


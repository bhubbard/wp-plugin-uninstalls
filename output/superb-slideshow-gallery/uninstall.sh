#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssg_title'
wp option delete 'ssg_width'
wp option delete 'ssg_height'
wp option delete 'ssg_pause'
wp option delete 'ssg_fadeduration'
wp option delete 'ssg_descreveal'
wp option delete 'ssg_descreveal1'
wp option delete 'ssg_cycles'
wp option delete 'ssg_random'
wp option delete 'ssg_type'


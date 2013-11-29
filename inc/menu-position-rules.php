<?php
// load the menu_position.admin.inc include file
module_load_include('inc', 'menu_position', 'menu_position.admin');

/**
 * Create new Menu Position Rule.
 * @param array $mp_rules A multidimensional array with the following keys:
 * 'link_title' : Link title in the Main Menu. Assuming depth of 1
 * 'admin_title' : Administrative title of the Menu Position rule. Human-readable.
 * 'conditions' : multidimensional array of Menu Position conditions
 */
function stanford_jsa_mp_rules($mp_rule) {
  // get the mlid of the parent link
  $result = db_select('menu_links', 'm')
  ->fields('m', array('mlid'))
  ->condition('menu_name', 'main-menu')
  ->condition('depth', 1)
  ->condition('link_title', $mp_rule['link_title'])
  ->execute()
  ->fetchAssoc();

  $plid = $result['mlid'];


  // create the array to populate the rule
  $rule = array(
    'admin_title' => $mp_rule['admin_title'],
/*    'conditions' => array(
      'content_type' => array(
        'content_type' => array(
          'stanford_news_item' => 'stanford_news_item',
        ),
      ),
    ),*/
    'conditions' => $mp_rule['conditions'],
    'menu_name' => 'main-menu',
    'plid' => $plid,  // "News" item in main menu. Need to look this up programatically
  );

  // calling menu_position_add_rule here because we can assume that no rules have been added
  menu_position_add_rule($rule);
}

// Define the rules
$rules = array();
$rules[] = array(
  'link_title' => 'About',
  'admin_title' => 'About by path',
  'conditions' => array(
    'pages' => array(
      'pages' => 'about/*',
    ),
  ),
);
$rules[] = array(
  'link_title' => 'Academics',
  'admin_title' => 'Academics by path',
  'conditions' => array(
    'pages' => array(
      'pages' => 'academics/*',
    ),
  ),
);
$rules[] = array(
  'link_title' => 'News',
  'admin_title' => 'News by content type',
  'conditions' => array(
    'content_type' => array(
      'content_type' => array(
        'stanford_news_item' => 'stanford_news_item',
      ),
    ),
  ),
);
$rules[] = array(
  'link_title' => 'News',
  'admin_title' => 'News by path',
  'conditions' => array(
    'pages' => array(
      'pages' => 'news/*',
    ),
  ),
);
$rules[] = array(
  'link_title' => 'Events',
  'admin_title' => 'Events by content type',
  'conditions' => array(
    'content_type' => array(
      'content_type' => array(
        'stanford_event' => 'stanford_event',
      ),
    ),
  ),
);
$rules[] = array(
  'link_title' => 'Events',
  'admin_title' => 'Events by path',
  'conditions' => array(
    'pages' => array(
      'pages' => 'events/*',
    ),
  ),
);
$rules[] = array(
  'link_title' => 'People',
  'admin_title' => 'People by content type',
  'conditions' => array(
    'content_type' => array(
      'content_type' => array(
        'stanford_person' => 'stanford_person',
      ),
    ),
  ),
);
$rules[] = array(
  'link_title' => 'People',
  'admin_title' => 'People by path',
  'conditions' => array(
    'pages' => array(
      'pages' => 'people/*',
    ),
  ),
);
$rules[] = array(
  'link_title' => 'Publications',
  'admin_title' => 'Publications by content type',
  'conditions' => array(
    'content_type' => array(
      'content_type' => array(
        'stanford_publication' => 'stanford_publication',
      ),
    ),
  ),
);
$vocabulary = taxonomy_vocabulary_machine_name_load('stanford_faculty_type');
$vid = $vocabulary->vid;
$rules[] = array(
  'link_title' => 'People',
  'admin_title' => 'Faculty by taxonomy',
  'conditions' => array(
    'taxonomy' => array(
      'vid' => $vid,
      'tid' => array(),
    ),
  ),
);
$vocabulary = taxonomy_vocabulary_machine_name_load('stanford_staff_type');
$vid = $vocabulary->vid;
$rules[] = array(
  'link_title' => 'People',
  'admin_title' => 'Staff by taxonomy',
  'conditions' => array(
    'taxonomy' => array(
      'vid' => $vid,
      'tid' => array(),
    ),
  ),
);
$vocabulary = taxonomy_vocabulary_machine_name_load('stanford_student_type');
$vid = $vocabulary->vid;
$rules[] = array(
  'link_title' => 'People',
  'admin_title' => 'Students by taxonomy',
  'conditions' => array(
    'taxonomy' => array(
      'vid' => $vid,
      'tid' => array(),
    ),
  ),
);
$vocabulary = taxonomy_vocabulary_machine_name_load('news_categories');
$vid = $vocabulary->vid;
$rules[] = array(
  'link_title' => 'News',
  'admin_title' => 'News by taxonomy',
  'conditions' => array(
    'taxonomy' => array(
      'vid' => $vid,
      'tid' => array(),
    ),
  ),
);

foreach ($rules as $mp_rule) {
  stanford_jsa_mp_rules($mp_rule);
}
?>

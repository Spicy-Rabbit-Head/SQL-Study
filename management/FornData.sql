INSERT
INTO
    form_management.form_structure
    (form_name, form_desc, form_type, form_content)
VALUES
    ('NonRoutineMattersEdit', '非例行事项编辑', 'edit', '[
      {
        "component": "input",
        "label": "事项名称",
        "prop": "mattersName"
      },
      {
        "component": "input",
        "label": "事项描述",
        "prop": "mattersDescription"
      },
      {
        "component": "select",
        "label": "成员",
        "prop": "member",
        "multiple": true,
        "options": [
          {
            "label": "伍英贤",
            "value": "伍英贤"
          },
          {
            "label": "刘佳辉",
            "value": "刘佳辉"
          },
          {
            "label": "孙楠",
            "value": "孙楠"
          },
          {
            "label": "李浩勇",
            "value": "李浩勇"
          },
          {
            "label": "王斌",
            "value": "王斌"
          },
          {
            "label": "王璇",
            "value": "王璇"
          },
          {
            "label": "王立虎",
            "value": "王立虎"
          },
          {
            "label": "赵子奎",
            "value": "赵子奎"
          },
          {
            "label": "邹忠",
            "value": "邹忠"
          },
          {
            "label": "郁华",
            "value": "郁华"
          }
        ]
      },
      {
        "component": "select",
        "label": "事项时间",
        "prop": "mattersTime",
        "multiple": false,
        "options": [
          {
            "label": "上午",
            "value": "上午"
          },
          {
            "label": "下午",
            "value": "下午"
          },
          {
            "label": "全天",
            "value": "全天"
          }
        ]
      }
    ]'::JSON),
    ('NonRoutineMattersAdd', '非例行事项添加', 'add', '[
      {
        "component": "input",
        "label": "事项名称",
        "prop": "mattersName"
      },
      {
        "component": "input",
        "label": "事项描述",
        "prop": "mattersDescription"
      },
      {
        "component": "select",
        "label": "成员",
        "prop": "member",
        "multiple": true,
        "options": [
          {
            "label": "伍英贤",
            "value": "伍英贤"
          },
          {
            "label": "刘佳辉",
            "value": "刘佳辉"
          },
          {
            "label": "孙楠",
            "value": "孙楠"
          },
          {
            "label": "李浩勇",
            "value": "李浩勇"
          },
          {
            "label": "王斌",
            "value": "王斌"
          },
          {
            "label": "王璇",
            "value": "王璇"
          },
          {
            "label": "王立虎",
            "value": "王立虎"
          },
          {
            "label": "赵子奎",
            "value": "赵子奎"
          },
          {
            "label": "邹忠",
            "value": "邹忠"
          },
          {
            "label": "郁华",
            "value": "郁华"
          }
        ]
      },
      {
        "component": "select",
        "label": "事项时间",
        "prop": "mattersTime",
        "multiple": false,
        "options": [
          {
            "label": "上午",
            "value": "上午"
          },
          {
            "label": "下午",
            "value": "下午"
          },
          {
            "label": "全天",
            "value": "全天"
          }
        ]
      }
    ]'::JSON)
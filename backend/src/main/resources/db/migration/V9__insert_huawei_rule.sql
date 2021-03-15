

INSERT INTO rule_group VALUES (4, 'Huawei 等保预检', '等保合规检查（全称为等级保护合规检查）为您提供了全面覆盖通信网络、区域边界、计算环境和管理中心的网络安全检查。', '等保三级', 'fit2cloud-huawei-plugin', 1);
INSERT INTO rule_group VALUES (5, 'Huawei CIS合规检查', 'CIS（Center for Internet Security）合规检查能力，为您动态且持续地监控您保有在云上的资源是否符合 CIS Control 网络安全架构要求。', '高风险', 'fit2cloud-huawei-plugin', 1);
INSERT INTO rule_group VALUES (6, 'Huawei OBS合规基线', 'OBS 合规检查为您提供全方位的对象存储资源检查功能。', '高风险', 'fit2cloud-huawei-plugin', 1);


INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('0cf1e428-3c37-4aa6-b651-acb46c4838c0', 'Huawei Redis实例公网访问扫描', 1, 'HighRisk', 'Huawei  账号下Redis实例不允许任意来源公网访问，视为“合规”', 'policies:\n    # 账号下Redis实例不允许任意来源公网访问，视为“合规”\n    - name: huawei-redis-internet-access\n      resource: huawei.redis\n      filters:\n        - type: internet-access\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"公网访问\",\"defaultValue\":\"true\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('108c875b-bf3c-4034-b07d-15faa8715257', 'Huawei ECS实例公网IP扫描', 1, 'HighRisk', 'Huawei ECS实例未直接绑定公网IP，视为“合规”，否则属于“不合规”。该规则仅适用于 IPv4 协议', 'policies:\n    # ECS实例未直接绑定公网IP，视为“合规”。该规则仅适用于 IPv4 协议\n    - name: huawei-ecs-public-ipaddress\n      resource: huawei.ecs\n      filters:\n        - type: public-ip-address', '[]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('2677aa0f-6796-4138-902b-f736e0c3d8da', 'Huawei OBS公开读取访问权限扫描', 1, 'HighRisk', 'Huawei  查看您的OBS存储桶是否不允许公开读取访问权限。如果某个OBS存储桶策略或存储桶 ACL 允许公开读取访问权限，则该存储桶不合规', 'policies:\n    # 查看您的OBS存储桶是否不允许公开读取访问权限。如果某个OBS存储桶策略或存储桶 ACL 允许公开读取访问权限，则该存储桶不合规\n    - name: huawei-obs-global-grants\n      resource: huawei.obs\n      filters:\n        - type: global-grants\n          value: read', '[]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('332ce586-70de-4053-a922-f76d6340a03c', 'Huawei RDS实例计费类型扫描', 1, 'HighRisk', 'Huawei  测您账号下RDS数据库实例计费类型信息，按需视为“合规”，否则视为“不合规”', 'policies:\n    #测您账号下RDS数据库实例计费类型信息，按需视为“合规”，否则视为“不合规”\n    - name: huawei-rds-charge-info\n      resource: huawei.rds\n      filters:\n        - type: charge-info\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"计费模式:prePaid包年包月/postPaid按需\",\"defaultValue\":\"postPaid\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('33a70278-c772-4ef0-93c9-4b9d3df1e242', 'Huawei RDS实例磁盘空间扫描', 1, 'HighRisk', 'Huawei 账号下RDS实例磁盘空间是否已满，未满视为“合规”，否则属于“不合规”', 'policies:\n    # 账号下RDS实例磁盘空间是否已满，未满视为“合规”，否则属于“不合规”。\n    - name: huawei-rds-storagefull\n      resource: huawei.rds\n      filters:\n        - type: storagefull', '[]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('36908c29-c15e-4c73-a964-5fb97bbb27fa', 'Huawei Disk磁盘加密状态扫描', 1, 'HighRisk', 'Huawei 账号下所有的磁盘均已加密；若您配置阈值，则磁盘加密的Id需存在您列出的阈值中，视为“合规”', 'policies:\n    - name: huawei-encrypted-disk\n      resource: huawei.disk\n      filters:\n        - type: encrypted\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"磁盘是否加密( true/false )\",\"defaultValue\":\"false\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('3b3a76cf-78e4-4c48-84da-baf2af6be696', 'Huawei EIP带宽峰值扫描', 1, 'HighRisk', 'Huawei 检测您账号下的弹性IP实例是否达到最低带宽要求', 'policies:\n    # 检测您账号下的弹性IP实例是否达到最低带宽要求\n    - name: huawei-eip-bandwidth\n      resource: huawei.eip\n      filters:\n        - type: bandwidth\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"按带宽计费的公网型实例的带宽峰值\",\"defaultValue\":\"10\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('3c4f6db4-6f8d-4e42-9c7e-d209fe5489fb', 'Huawei ELB负载均衡HTTPS监听扫描', 1, 'HighRisk', 'Huawei  ELB负载均衡开启HTTPS监听，视为“合规”，否则属于“不合规”', 'policies:\n    # 负载均衡开启HTTPS监听，视为“合规”。\n    - name: huawei-elb-listener\n      resource: huawei.elb\n      filters:\n        - type: listener\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"负载均衡实例前端使用的协议\",\"defaultValue\":\"HTTPS\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('3ce82502-1c03-4ab0-b8ed-83f631a20805', 'Huawei Redis实例免密码访问扫描', 1, 'HighRisk', 'Huawei  账号下Redis实例是否允许免密码访问，不允许视为“合规”，否则视为“不合规”', 'policies:\n    # 账号下Redis实例是否允许免密码访问，不允许视为“合规”，否则视为“不合规”\n    - name: huawei-redis-internet-access\n      resource: huawei.redis\n      filters:\n        - type: no-password-access\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"免密码访问\",\"defaultValue\":\"true\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('5c681b76-fea3-4cb9-b6d4-a92d0d2d44fa', 'Huawei ELB实例关联云服务器组扫描', 1, 'HighRisk', 'Huawei  账号下负载均衡实例是否已关联到后端云服务器组；若关联，视为“合规”，否则视为不合规', 'policies:\n    # 账号下负载均衡实例是否已关联到后端云服务器组；若关联，视为“合规”，否则视为不合规。\n    - name: huawei-elb-unused\n      resource: huawei.elb\n      filters:\n        - type: ${{value}}', '[{\"key\":\"value\",\"name\":\"是否已关联到后端云服务器组\",\"defaultValue\":\"unused\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('7e7b3463-c7da-4545-bbc7-f97c83f429e4', 'Huawei ELB实例绑定公网IP扫描', 1, 'HighRisk', 'Huawei  负载均衡实例未直接绑定公网IP，视为“合规”。该规则仅适用于 IPv4 协议', 'policies:\n    # 负载均衡实例未直接绑定公网IP，视为“合规”。该规则仅适用于 IPv4 协议。\n    - name: huawei-elb-address-type\n      resource: huawei.elb\n      filters:\n        - type: address-type\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"internet 公网/intranet 内网\",\"defaultValue\":\"internet\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('8f3f7596-569b-4cde-97a2-1d565b8224e1', 'Huawei SecurityGroup安全组配置扫描', 1, 'HighRisk', 'Huawei  账号下ECS安全组配置不为“0.0.0.0/0”，视为“合规”，否则属于“不合规”', 'policies:\n    # 账号下ECS安全组配置不为“0.0.0.0/0”，视为“合规”。\n    - name: huawei-sg-source-cidr-ip\n      resource: huawei.security-group\n      filters:\n        - type: source-cidr-ip\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"目标IP地址段\",\"defaultValue\":\"\\\"0.0.0.0/0\\\"\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('968837c3-25f2-4848-8174-5413c859f1f1', 'Huawei OBS公开写入访问权限扫描', 1, 'HighRisk', 'Huawei  查看OBS存储桶是否不允许公开写入访问权限。如果某个OBS存储桶策略或存储桶 ACL 允许公开写入访问权限，则该存储桶不合规', 'policies:\n    # OBS存储桶是否不允许公开写入访问权限。如果某个OBS存储桶策略或存储桶 ACL 允许公开写入访问权限，则该存储桶不合规\n    - name: huawei-obs-public-read-write\n      resource: huawei.obs\n      filters:\n        - type: global-grants\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"公开写入访问权限\",\"defaultValue\":\"write\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('99e762e7-766f-4e55-9133-773593497b44', 'Huawei SecurityGroup高危安全组扫描', 1, 'HighRisk', 'Huawei  检测安全组是否开启风险端口，未开启视为“合规”，否则属于“不合规”', 'policies:\n  #扫描开放以下高危端口的安全组：\n  #(20,21,22,25,80,773,765,1733,1737,3306,3389,7333,5732,5500)\n  - name: huawei-security-group\n    resource: huawei.security-group\n    description: |\n      Add Filter all security groups, filter ports\n      [20,21,22,25,80,773,765,1733,1737,3306,3389,7333,5732,5500]\n      on 0.0.0.0/0 or\n      [20,21,22,25,80,773,765, 1733,1737,3306,3389,7333,5732,5500]\n      on ::/0 (IPv6)\n    filters:\n        - or:\n            - type: ingress\n              IpProtocol: \"-1\"\n              Ports: ${{ipv4_port}}\n              Cidr: \"0.0.0.0/0\"\n            - type: ingress\n              IpProtocol: \"-1\"\n              Ports: ${{ipv6_port}}\n              Cidr: \"::/0\"', '[{\"key\":\"ipv4_port\",\"name\":\"ipv4端口\",\"defaultValue\":\"[20,21,22,25,80,773,765, 1733,1737,3306,3389,7333,5732,5500]\",\"required\":true},{\"key\":\"ipv6_port\",\"name\":\"ipv6端口\",\"defaultValue\":\"[20,21,22,25,80,773,765, 1733,1737,3306,3389,7333,5732,5500]\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('b1260ecf-47fa-4613-8ed4-71417f29441b', 'Huawei RDS实例公网访问扫描', 1, 'HighRisk', 'Huawei  检测您账号下RDS实例不允许任意来源公网访问，视为“合规”', 'policies:\n    # 检测您账号下RDS实例不允许任意来源公网访问，视为“合规”\n    - name: huawei-rds-internet-access\n      resource: huawei.rds\n      filters:\n        - type: internet-access\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"允许任意来源公网访问\",\"defaultValue\":\"true\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('bb878650-b62b-4980-a6aa-4d61c1a429a0', 'Huawei DDS实例公网访问扫描', 1, 'HighRisk', 'Huawei  账号下DDS实例不允许任意来源公网访问，视为“合规”', 'policies:\n    # 账号下DDS实例不允许任意来源公网访问，视为“合规”\n    - name: huawei-dds-internet-access\n      resource: huawei.dds\n      filters:\n        - type: internet-access\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"公网访问\",\"defaultValue\":\"true\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('ce805504-de52-4ecc-a86a-4905d2a558f3', 'Huawei RDS实例网络类型扫描', 1, 'HighRisk', 'Huawei  账号下RDS实例已关联到VPC；视为“合规”', 'policies:\n    # 账号下RDS实例已关联到VPC；视为“合规”。\n    - name: huawei-rds-instance-network-type\n      resource: huawei.rds\n      filters:\n        - type: instance-network-type\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"实例的网络类型\",\"defaultValue\":\"VPC\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('e58a3395-aee8-40bb-8f2f-d7156c0435cb', 'Huawei IAM用户是否登录保护扫描', 1, 'HighRisk', 'Huawei 检测IAM用户是否开启登录保护，开启视为“合规”，否则属于“不合规”', 'policies:\n    # 检测IAM用户是否开启登录保护，开启视为“合规”，否则属于“不合规”\n    - name: huawei-iam-login\n      resource: huawei.iam\n      filters:\n        - type: login\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"检测IAM用户是否开启登录保护\",\"defaultValue\":\"true\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('f744fdd9-166d-40a7-ad91-9e933ad514cc', 'Huawei RDS实例高可用状态扫描', 1, 'HighRisk', 'Huawei 账号下RDS实例具备高可用能力，视为“合规”，否则属于“不合规”', 'policies:\n    # 账号下RDS实例具备高可用能力，视为“合规”，否则属于“不合规”。\n    - name: huawei-rds-high-availability\n      resource: huawei.rds\n      filters:\n        - type: high-availability', '[]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');
INSERT INTO `rule`(`id`, `name`, `status`, `severity`, `description`, `script`, `parameter`, `plugin_id`, `plugin_name`, `plugin_icon`, `last_modified`, `flag`, `scan_type`) VALUES ('f7e8d1c4-16f7-4079-b110-b60db0cd91bf', 'Huawei ECS实例网络类型扫描', 1, 'HighRisk', 'Huawei  账号下所有ECS实例已关联到VPC；若您配置阈值，则关联的VpcId需存在您列出的阈值中，视为“合规”', 'policies:\n    # 账号下所有ECS实例已关联到VPC；若您配置阈值，则关联的VpcId需存在您列出的阈值中，视为“合规”\n    - name: huawei-ecs-instance-network-type\n      resource: huawei.ecs\n      filters:\n        - type: instance-network-type\n          value: ${{value}}', '[{\"key\":\"value\",\"name\":\"实例的网络类型:classic经典网络/vpc网络\",\"defaultValue\":\"vpc\",\"required\":true}]', 'fit2cloud-huawei-plugin', '华为云', 'fusion.png', concat(unix_timestamp(now()), '002'), 1, 'custodian');


INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (31, '36908c29-c15e-4c73-a964-5fb97bbb27fa', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (32, '968837c3-25f2-4848-8174-5413c859f1f1', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (33, '2677aa0f-6796-4138-902b-f736e0c3d8da', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (34, '7e7b3463-c7da-4545-bbc7-f97c83f429e4', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (35, '5c681b76-fea3-4cb9-b6d4-a92d0d2d44fa', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (36, '108c875b-bf3c-4034-b07d-15faa8715257', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (37, '3b3a76cf-78e4-4c48-84da-baf2af6be696', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (38, '3c4f6db4-6f8d-4e42-9c7e-d209fe5489fb', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (39, 'f7e8d1c4-16f7-4079-b110-b60db0cd91bf', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (40, '8f3f7596-569b-4cde-97a2-1d565b8224e1', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (41, '99e762e7-766f-4e55-9133-773593497b44', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (42, 'b1260ecf-47fa-4613-8ed4-71417f29441b', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (43, 'f744fdd9-166d-40a7-ad91-9e933ad514cc', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (44, '33a70278-c772-4ef0-93c9-4b9d3df1e242', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (45, 'ce805504-de52-4ecc-a86a-4905d2a558f3', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (46, 'e58a3395-aee8-40bb-8f2f-d7156c0435cb', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (47, '0cf1e428-3c37-4aa6-b651-acb46c4838c0', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (48, '3ce82502-1c03-4ab0-b8ed-83f631a20805', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (49, 'bb878650-b62b-4980-a6aa-4d61c1a429a0', 'safety');
INSERT INTO `rule_tag_mapping`(`id`, `rule_id`, `tag_key`) VALUES (50, '332ce586-70de-4053-a922-f76d6340a03c', 'cost');


INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (72, '36908c29-c15e-4c73-a964-5fb97bbb27fa', '53');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (73, '36908c29-c15e-4c73-a964-5fb97bbb27fa', '94');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (74, '968837c3-25f2-4848-8174-5413c859f1f1', '10');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (75, '968837c3-25f2-4848-8174-5413c859f1f1', '13');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (76, '2677aa0f-6796-4138-902b-f736e0c3d8da', '10');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (77, '2677aa0f-6796-4138-902b-f736e0c3d8da', '13');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (78, '7e7b3463-c7da-4545-bbc7-f97c83f429e4', '52');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (79, '5c681b76-fea3-4cb9-b6d4-a92d0d2d44fa', '52');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (80, '3b3a76cf-78e4-4c48-84da-baf2af6be696', '2');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (81, '3c4f6db4-6f8d-4e42-9c7e-d209fe5489fb', '52');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (82, 'f7e8d1c4-16f7-4079-b110-b60db0cd91bf', '3');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (83, 'f7e8d1c4-16f7-4079-b110-b60db0cd91bf', '5');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (84, '8f3f7596-569b-4cde-97a2-1d565b8224e1', '10');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (85, '8f3f7596-569b-4cde-97a2-1d565b8224e1', '13');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (86, '8f3f7596-569b-4cde-97a2-1d565b8224e1', '92');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (87, '8f3f7596-569b-4cde-97a2-1d565b8224e1', '93');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (88, '8f3f7596-569b-4cde-97a2-1d565b8224e1', '95');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (89, '99e762e7-766f-4e55-9133-773593497b44', '9');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (90, '99e762e7-766f-4e55-9133-773593497b44', '46');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (91, '99e762e7-766f-4e55-9133-773593497b44', '92');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (92, '99e762e7-766f-4e55-9133-773593497b44', '93');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (93, '99e762e7-766f-4e55-9133-773593497b44', '95');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (94, 'b1260ecf-47fa-4613-8ed4-71417f29441b', '97');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (95, 'f744fdd9-166d-40a7-ad91-9e933ad514cc', '2');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (96, 'f744fdd9-166d-40a7-ad91-9e933ad514cc', '56');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (97, 'f744fdd9-166d-40a7-ad91-9e933ad514cc', '57');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (98, 'f744fdd9-166d-40a7-ad91-9e933ad514cc', '58');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (99, 'ce805504-de52-4ecc-a86a-4905d2a558f3', '3');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (100, 'ce805504-de52-4ecc-a86a-4905d2a558f3', '4');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (101, 'ce805504-de52-4ecc-a86a-4905d2a558f3', '5');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (102, 'ce805504-de52-4ecc-a86a-4905d2a558f3', '6');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (103, 'ce805504-de52-4ecc-a86a-4905d2a558f3', '7');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (104, 'e58a3395-aee8-40bb-8f2f-d7156c0435cb', '32');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (105, 'e58a3395-aee8-40bb-8f2f-d7156c0435cb', '90');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (106, '0cf1e428-3c37-4aa6-b651-acb46c4838c0', '10');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (107, '0cf1e428-3c37-4aa6-b651-acb46c4838c0', '13');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (108, '3ce82502-1c03-4ab0-b8ed-83f631a20805', '10');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (109, '3ce82502-1c03-4ab0-b8ed-83f631a20805', '13');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (110, 'bb878650-b62b-4980-a6aa-4d61c1a429a0', '10');
INSERT INTO `rule_inspection_report_mapping`(`id`, `rule_id`, `report_id`) VALUES (111, 'bb878650-b62b-4980-a6aa-4d61c1a429a0', '13');


INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (43, '36908c29-c15e-4c73-a964-5fb97bbb27fa', '1');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (44, '968837c3-25f2-4848-8174-5413c859f1f1', '5');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (45, '968837c3-25f2-4848-8174-5413c859f1f1', '6');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (46, '2677aa0f-6796-4138-902b-f736e0c3d8da', '5');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (47, '2677aa0f-6796-4138-902b-f736e0c3d8da', '6');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (48, '7e7b3463-c7da-4545-bbc7-f97c83f429e4', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (49, '5c681b76-fea3-4cb9-b6d4-a92d0d2d44fa', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (50, '108c875b-bf3c-4034-b07d-15faa8715257', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (51, '3b3a76cf-78e4-4c48-84da-baf2af6be696', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (52, '3c4f6db4-6f8d-4e42-9c7e-d209fe5489fb', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (53, 'f7e8d1c4-16f7-4079-b110-b60db0cd91bf', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (54, '8f3f7596-569b-4cde-97a2-1d565b8224e1', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (55, '99e762e7-766f-4e55-9133-773593497b44', '5');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (56, '99e762e7-766f-4e55-9133-773593497b44', '6');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (57, 'b1260ecf-47fa-4613-8ed4-71417f29441b', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (58, 'f744fdd9-166d-40a7-ad91-9e933ad514cc', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (59, 'f744fdd9-166d-40a7-ad91-9e933ad514cc', '5');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (60, '33a70278-c772-4ef0-93c9-4b9d3df1e242', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (61, 'ce805504-de52-4ecc-a86a-4905d2a558f3', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (62, 'e58a3395-aee8-40bb-8f2f-d7156c0435cb', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (63, 'e58a3395-aee8-40bb-8f2f-d7156c0435cb', '5');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (64, '0cf1e428-3c37-4aa6-b651-acb46c4838c0', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (65, '3ce82502-1c03-4ab0-b8ed-83f631a20805', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (66, 'bb878650-b62b-4980-a6aa-4d61c1a429a0', '4');
INSERT INTO `rule_group_mapping`(`id`, `rule_id`, `group_id`) VALUES (67, '332ce586-70de-4053-a922-f76d6340a03c', '4');


INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('0663e58a-ce96-4687-9778-6df448501ba8', '3b3a76cf-78e4-4c48-84da-baf2af6be696', 'huawei.eip');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('0ab08df9-e628-4dc2-ad51-3789a16c6bc8', 'f744fdd9-166d-40a7-ad91-9e933ad514cc', 'huawei.rds');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('1f681a6a-21c6-4cef-8574-8ce741949866', '3ce82502-1c03-4ab0-b8ed-83f631a20805', 'huawei.redis');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('22f28cd2-d06d-48fa-ae36-0c95e1925be9', '332ce586-70de-4053-a922-f76d6340a03c', 'huawei.rds');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('3e50ec86-1a2a-486e-920b-39572eb8d193', '2677aa0f-6796-4138-902b-f736e0c3d8da', 'huawei.oss');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('421ae776-4b20-4f80-89f6-4133f1a6a62e', '36908c29-c15e-4c73-a964-5fb97bbb27fa', 'huawei.disk');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('6955ae5d-75a3-4ed8-9636-295938a0b55b', 'b1260ecf-47fa-4613-8ed4-71417f29441b', 'huawei.rds');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('6a77f9da-a452-4052-adbd-cd005b2f8c58', '108c875b-bf3c-4034-b07d-15faa8715257', 'huawei.ecs');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('6b4f003c-37cd-4fa1-8fa9-290c0e2fc010', '99e762e7-766f-4e55-9133-773593497b44', 'huawei.security-group');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('8fa54aca-2c5b-428e-b47f-71520efb2a2f', 'bb878650-b62b-4980-a6aa-4d61c1a429a0', 'huawei.dds');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('a3de7add-00d9-4763-a14f-02883ffce51a', '8f3f7596-569b-4cde-97a2-1d565b8224e1', 'huawei.security-group');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('ad017b3f-292f-471b-ad65-c8523d68b984', '33a70278-c772-4ef0-93c9-4b9d3df1e242', 'huawei.rds');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('b654400f-d2a9-4a33-bc9f-8808e28cd6a9', 'ce805504-de52-4ecc-a86a-4905d2a558f3', 'huawei.rds');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('bc3376eb-00f7-4bfc-8567-05a82432e5f4', 'e58a3395-aee8-40bb-8f2f-d7156c0435cb', 'huawei.iam');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('c34068f3-c3ef-4998-ac3c-281ac41efe93', '0cf1e428-3c37-4aa6-b651-acb46c4838c0', 'huawei.redis');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('c4b55631-409f-4b62-b8cc-a61e5fc8e9c9', '5c681b76-fea3-4cb9-b6d4-a92d0d2d44fa', 'huawei.elb');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('c98019ad-6ba4-47cf-ab85-0d0dcad25561', 'f7e8d1c4-16f7-4079-b110-b60db0cd91bf', 'huawei.ecs');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('ccde7b2c-719e-48c0-8fd3-79a8ce9827d0', '7e7b3463-c7da-4545-bbc7-f97c83f429e4', 'huawei.elb');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('ce4967f4-70f9-4de5-b66d-7b7ade3bf198', '3c4f6db4-6f8d-4e42-9c7e-d209fe5489fb', 'huawei.elb');
INSERT INTO `rule_type`(`id`, `rule_id`, `resource_type`) VALUES ('d4f87cf6-fe25-4251-ade9-00b07cfc6021', '968837c3-25f2-4848-8174-5413c859f1f1', 'huawei.obs');
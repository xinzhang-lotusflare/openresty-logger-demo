local cjson = require("cjson")

--local LOG = require("io_logger")
--local LOG = require("ngx_logger")
local LOG = require("file_logger")

local str = [[{"kind":"Event","apiVersion":"audit.k8s.io/v1","level":"Request","auditID":"3f15a545-f1ca-4f28-820c-24749b564783","stage":"ResponseComplete","requestURI":"/api/v1/namespaces/kube-system/configmaps/aws-load-balancer-controller-leader","verb":"update","user":{"username":"system:serviceaccount:kube-system:aws-load-balancer-controller","uid":"ffce3d6d-c15d-451a-8006-9fe16af85f00","groups":["system:serviceaccounts","system:serviceaccounts:kube-system","system:authenticated"],"extra":{"authentication.kubernetes.io/pod-name":["aws-load-balancer-controller-58bb5c65f8-7xksb"],"authentication.kubernetes.io/pod-uid":["79125e3e-f0f6-4ef0-9973-c49af93abc95"]}},"sourceIPs":["172.18.39.224"],"userAgent":"controller/v0.0.0 (linux/amd64) kubernetes/$Format/leader-election","objectRef":{"resource":"configmaps","namespace":"kube-system","name":"aws-load-balancer-controller-leader","uid":"2471cd62-cf1e-4a07-b117-a6b618c402af","apiVersion":"v1","resourceVersion":"463157641"},"responseStatus":{"metadata":{},"code":200},"requestObject":{"kind":"ConfigMap","apiVersion":"v1","metadata":{"name":"aws-load-balancer-controller-leader","namespace":"kube-system","uid":"2471cd62-cf1e-4a07-b117-a6b618c402af","resourceVersion":"463157641","creationTimestamp":"2021-11-01T13:23:31Z","annotations":{"control-plane.alpha.kubernetes.io/leader":"{\"holderIdentity\":\"aws-load-balancer-controller-58bb5c65f8-7xksb_1e6f0374-99ff-4c32-8173-fec021a0221e\",\"leaseDurationSeconds\":15,\"acquireTime\":\"2022-08-26T12:25:45Z\",\"renewTime\":\"2022-09-04T21:23:37Z\",\"leaderTransitions\":377}"},"managedFields":[{"manager":"controller","operation":"Update","apiVersion":"v1","time":"2021-11-01T13:23:31Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:annotations":{".":{},"f:control-plane.alpha.kubernetes.io/leader":{}}}}}]}},"requestReceivedTimestamp":"2022-09-04T21:23:37.179313Z","stageTimestamp":"2022-09-04T21:23:37.182914Z","annotations":{"authorization.k8s.io/decision":"allow","authorization.k8s.io/reason":"RBAC: allowed by RoleBinding \"aws-load-balancer-controller-leader-election-rolebinding/kube-system\" of Role \"aws-load-balancer-controller-leader-election-role\" to ServiceAccount \"aws-load-balancer-controller/kube-system\""}}]]
local msg = cjson.decode(str)

LOG.log(LOG.LEVEL.WARN, msg) -- logging once
--LOG.log(LOG.LEVEL.WARN, msg) -- logging twice
--LOG.log(LOG.LEVEL.WARN, msg) --
--LOG.log(LOG.LEVEL.WARN, msg) -- logging 4 times

ngx.say(str)

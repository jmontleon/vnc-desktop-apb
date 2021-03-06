FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHZuYy1kZXNrdG9wLWFwYgpkZXNjcmlwdGlvbjogVGhpcyBpcyBh\
IHNhbXBsZSBhcHBsaWNhdGlvbiBnZW5lcmF0ZWQgYnkgYXBiIGluaXQKYmluZGFibGU6IEZhbHNl\
CmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogIlZOQyBEZXNrdG9wIChB\
UEIpIgogIGltYWdlVXJsOiAiaHR0cHM6Ly91cGxvYWQud2lraW1lZGlhLm9yZy93aWtpcGVkaWEv\
Y29tbW9ucy90aHVtYi9hL2E5L1RpZ2VyVk5DX2xvZ28uc3ZnLzQ4cHgtVGlnZXJWTkNfbG9nby5z\
dmcucG5nIgogIGRlcGVuZGVuY2llczoKICAtIGRvY2tlci5pby9hbnNpYmxlcGxheWJvb2tidW5k\
bGUvdm5jLWNsaWVudDpsYXRlc3QKICAtIGRvY2tlci5pby9hbnNpYmxlcGxheWJvb2tidW5kbGUv\
dm5jLWRlc2t0b3A6ZjI4CiAgLSBkb2NrZXIuaW8vYW5zaWJsZXBsYXlib29rYnVuZGxlL3ZuYy1k\
ZXNrdG9wOmYyNwpwbGFuczoKICAtIG5hbWU6IGYyOAogICAgZGVzY3JpcHRpb246IFJ1biBhIGRl\
c2t0b3Agb2YgeW91ciBjaG9pY2Ugb24gRmVkb3JhIDI4CiAgICBmcmVlOiBUcnVlCiAgICBtZXRh\
ZGF0YToge30KICAgIHBhcmFtZXRlcnM6CiAgICAtIG5hbWU6IHZuY3Bhc3MKICAgICAgdGl0bGU6\
IFZOQyBQYXNzd29yZAogICAgICB0eXBlOiBzdHJpbmcKICAgICAgcmVxdWlyZWQ6IHRydWUKICAg\
IC0gbmFtZTogZGUKICAgICAgdGl0bGU6IERlc2t0b3AgRW52aXJvbm1lbnQKICAgICAgdHlwZTog\
ZW51bQogICAgICBlbnVtOiBbJ2Z2d20nLCAnaTMnLCAnS0RFJywgJ0xYREUnLCAnTFhRdCcsICdN\
QVRFJywgJ1N1Z2FyJywgJ3R3bScsICdYZmNlJ10KICAgICAgZGVmYXVsdDogJ1hmY2UnCiAgICAg\
IHVwZGF0YWJsZTogdHJ1ZQogICAgLSBuYW1lOiByZXNvbHV0aW9uCiAgICAgIHRpdGxlOiBEZXNr\
dG9wIFJlc29sdXRpb24KICAgICAgdHlwZTogZW51bQogICAgICBlbnVtOiBbJzgwMHg2MDAnLCAn\
MTAyNHg3NjgnLCAnMTI4MHgxMDI0JywgJzEzNjB4NzY4JywgJzE0NDB4OTAwJywgJzE5MjB4MTA4\
MCddCiAgICAgIGRlZmF1bHQ6ICcxMzYweDc2OCcKICAgICAgdXBkYXRhYmxlOiB0cnVlCiAgLSBu\
YW1lOiBmMjcKICAgIGRlc2NyaXB0aW9uOiBSdW4gYSBEZXNrdG9wIG9mIHlvdXIgY2hvaWNlIG9u\
IEZlZG9yYSAyNyAKICAgIGZyZWU6IFRydWUKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVy\
czogCiAgICAtIG5hbWU6IHZuY3Bhc3MKICAgICAgdGl0bGU6IFZOQyBQYXNzd29yZAogICAgICB0\
eXBlOiBzdHJpbmcKICAgICAgcmVxdWlyZWQ6IHRydWUKICAgIC0gbmFtZTogZGUKICAgICAgdGl0\
bGU6IERlc2t0b3AgRW52aXJvbm1lbnQKICAgICAgdHlwZTogZW51bQogICAgICBlbnVtOiBbJ2Z2\
d20nLCAnaTMnLCAnS0RFJywgJ0xYREUnLCAnTFhRdCcsICdNQVRFJywgJ1N1Z2FyJywgJ3R3bScs\
ICdYZmNlJ10KICAgICAgZGVmYXVsdDogJ1hmY2UnCiAgICAgIHVwZGF0YWJsZTogdHJ1ZQogICAg\
LSBuYW1lOiByZXNvbHV0aW9uCiAgICAgIHRpdGxlOiBEZXNrdG9wIFJlc29sdXRpb24KICAgICAg\
dHlwZTogZW51bQogICAgICBlbnVtOiBbJzgwMHg2MDAnLCAnMTAyNHg3NjgnLCAnMTI4MHgxMDI0\
JywgJzEzNjB4NzY4JywgJzE0NDB4OTAwJywgJzE5MjB4MTA4MCddCiAgICAgIGRlZmF1bHQ6ICcx\
MzYweDc2OCcKICAgICAgdXBkYXRhYmxlOiB0cnVlCg=="



COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb

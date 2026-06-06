#!/bin/bash                                                                                      
                                                                                                 
rg -l "\n}{$" spec > blah                                                                        
cat blah | xargs sed -i '' "s/\n}{$/,/g"; 

-- Constants
local ID = "kalandra.success"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Success!"
node.gameWon = true
node.description = [[%{green}
You open the door and find a small altar in the middle of the room. As you approach, you see a magical scroll on it containing instructions to cast a spell that could drive the Kraken away.

You take the scroll to the beach and the great Kraken rises from the depths, over 30 meters tall. Terrifying!

With the help of the scroll, the magic is successfully performed and the terrifying creature returns to its realm, bringing peace and tranquility back to the region. In gratitude, the local leader offers you a generous reward.

Your adventure in Kalandra was full of challenges, but you survived and helped the local community. With a sense of accomplishment and satisfaction, you move on to your next adventure, knowing your skills and courage will be needed again in the future.]]
node.header = [[
%{      }      %{blue}        %{   }      %{      }  %{    }          %{     }  %{magenta} .''.   %{     }       
%{      }      %{blue} .''.   %{red}   .  %{      }  %{cyan}    *''*  %{     }  %{magenta}:_\/_:  %{green}   .   
%{      }      %{blue}:_\/_:  %{red} _\(/_%{      }  %{cyan}.:.*_\/_* %{     }  %{magenta}: /\ :  %{green}.'.:.'.
%{yellow}  .''.%{blue}: /\ :  %{red} ./)\ %{      }  %{cyan}':'* /\ * %{white}: %{magenta} '..'.  %{green}-=:o:=-
%{yellow} :_\/_:'%{blue}.:::. %{red}   '%{yellow} *''* %{cyan}   * %{white}'.\'/.'%{red    } _\(/_%{green}'.':'.'
%{yellow} : /\ : %{blue}::::: %{   }   %{yellow} *_\/_*%{    }     %{white}-= o =-%{red    }  /)\ %{green}   '  *
%{yellow}  '..'  %{blue}':::' %{   }   %{yellow} * /\ *%{    }     %{white}.'/.\'.%{red    }   '  %{     }       
%{      }      *   %{    }    %{   }   %{yellow}  *..* %{    }     %{white}   :   %{       }      %{     }       
%{white }jgs     * %{    }    %{   }   %{      }       %{    }     %{     }       %{       }      %{     }       
%{      }        * %{    }    %{   }   %{      }       %{    }     %{     }       %{       }      %{     }       
]]

return node

/*
 * Copyright (c) 2011 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License
 * is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
 * or implied. See the License for the specific language governing permissions and limitations under
 * the License.
 */

package com.ginter.smartwork.front.document.controller;

import com.ginter.smartwork.common.json.JsonView;
import com.ginter.smartwork.front.document.service.DocumentService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author silupke@google.com (Your Name Here)
 *
 */

@Controller
public class DocumentController {
  @RequestMapping(value = "/document", method = RequestMethod.GET)
  public ModelAndView list(HttpServletRequest request, HttpServletResponse response) throws Exception {
    String type = request.getParameter("type");   // (value: recent, important)
    
    List<Map<String, Object>> model = new ArrayList<Map<String, Object>>();
    
    if("recent".equals(type)) {
      model = DocumentService.recentList();
    } else if("important".equals(type)) {
      model = DocumentService.importantList();
    }
    return JsonView.Render(model, response);
  }
}
